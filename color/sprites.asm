; Handles sprite attributes

DEF ATK_PAL_GREY    EQU 0
DEF ATK_PAL_BLUE    EQU 1
DEF ATK_PAL_RED     EQU 2
DEF ATK_PAL_BROWN   EQU 3
DEF ATK_PAL_YELLOW  EQU 4
DEF ATK_PAL_GREEN   EQU 5
DEF ATK_PAL_ICE     EQU 6
DEF ATK_PAL_PURPLE  EQU 7
; 8: color based on attack type
; 9: don't change color palette (assume it's already set properly from elsewhere)


DEF SPR_PAL_ORANGE  EQU 0
DEF SPR_PAL_BLUE    EQU 1
DEF SPR_PAL_GREEN   EQU 2
DEF SPR_PAL_BROWN   EQU 3
DEF SPR_PAL_PURPLE  EQU 4
DEF SPR_PAL_EMOJI   EQU 5
DEF SPR_PAL_TREE    EQU 6
DEF SPR_PAL_ROCK    EQU 7
DEF SPR_PAL_RANDOM  EQU 8

LoadOverworldSpritePalettes:
	ldh a, [rSVBK]
	ld b, a
	xor a
	ldh [rSVBK], a
	push bc
	; Does the map we're on use dark/night palettes?
	; Load the matching Object Pals if so
	ld a, [wCurMapTileset]
	ld hl, SpritePalettesNite
	cp CAVERN
	jr z, .gotPaletteList
	; If it is the Pokemon Center, load different pals for the Heal Machine to flash
	ld hl, SpritePalettesPokecenter
	cp POKECENTER
	jr z, .gotPaletteList
	; If not, load the normal Object Pals
	ld hl, SpritePalettes
.gotPaletteList
	pop bc
	ld a, b
	ldh [rSVBK], a
	jr LoadSpritePaletteData

LoadAttackSpritePalettes:
	ld hl, AttackSpritePalettes

LoadSpritePaletteData:
	ldh a, [rSVBK]
	ld b, a
	ld a, 2
	ldh [rSVBK], a
	push bc

	ld de, W2_SprPaletteData
	ld b, $40
.sprCopyLoop
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .sprCopyLoop
	ld a, 1
	ld [W2_ForceOBPUpdate], a

	pop af
	ldh [rSVBK], a
	ret

; Set an overworld sprite's colors
; On entering, A contains the flags (without a color palette) and de is the destination.
; This is called in the middle of a loop in engine/overworld/oam.asm, once per sprite.
ColorOverworldSprite::
	push af
	push bc
	push de
	and $f8
	ld b, a

	ldh a, [hSpriteOffset2]
	ld e, a
	ld d, wSpriteStateData1 >> 8
	ld a, [de] ; Load A with picture ID
	dec a

	ld de, SpritePaletteAssignments
	add e
	ld e, a
	jr nc, .noCarry
	inc d
.noCarry
	ld a, [de] ; Get the picture ID's palette

	; If it's 8, that means no particular palette is assigned
	cp SPR_PAL_RANDOM
	jr nz, .norandomColor

	; Bill is always brown
	ld a, [wCurMap]
	cp BILLS_HOUSE
	ld a, SPR_PAL_BROWN
	jr z, .norandomColor

	; This is a (somewhat) random but consistent color
	ldh a, [hSpriteOffset2]
	swap a
	and 3

.norandomColor

	pop de
	or b
	ld [de], a
	inc hl
	inc e
	pop bc
	pop af
	ret

; This is called whenever [wUpdateSpritesEnabled] != 1 (overworld sprites not enabled?).
;
; This sometimes does occur on the overworld, such as when exclamation marks appear, and
; when trees are being cut or boulders are being moved. Though, when in the overworld,
; W2_SpritePaletteMap is all blanked out (set to 9) except for the exclamation mark tile,
; so this function usually won't do anything.
;
; This colorizes: attack sprites, party menu, exclamation mark, trades, perhaps more?
ColorNonOverworldSprites::
	ld a, 2
	ldh [rSVBK], a

	ld hl, wShadowOAM
	ld b, 40

.spriteLoop
	inc hl
	inc hl
	ld a, [hli] ; tile
	ld e, a
	ld d, W2_SpritePaletteMap >> 8
	ld a, [de]
	cp 8 ; if 8, colorize based on attack type
	jr z, .getAttackType
	cp 9 ; if 9, do not colorize (use whatever palette it's set to already)
	jr z, .nextSprite
	cp 10 ; if 10 (used in game freak intro), color based on sprite number
	jr z, .gameFreakIntro
	jr .setPalette ; Otherwise, use the value as-is

.gameFreakIntro: ; The stars under the logo all get different colors
	ld a, b
	and 3
	add 4
	jr .setPalette

.getAttackType
	push hl

	; Load animation (move) being used
	xor a
	ldh [rSVBK], a
	ld a, [wAnimationID]
	ld d, a
	ld a, 2
	ldh [rSVBK], a

	; If the absorb animation is playing, it's always green. (Needed for leech seed)
	ld a, d
	cp ABSORB
	ld a, GRASS
	jr z, .gotType

	; Make stun spore and solarbeam yellow, despite being grass moves
	ld a, d
	cp STUN_SPORE
	ld a, ELECTRIC
	jr z, .gotType
	ld a, d
	cp SOLARBEAM
	ld a, ELECTRIC
	jr z, .gotType

	; Make tri-attack yellow, despite being a normal move
	ld a, d
	cp TRI_ATTACK
	ld a, ELECTRIC
	jr z, .gotType

	ldh a, [hWhoseTurn]
	and a
	jr z, .playersTurn
	ld a, [wEnemyMoveType] ; Enemy move type
	jr .gotType
.playersTurn
	ld a, [wPlayerMoveType] ; Move type
.gotType
	ld hl, TypeColorTable
	add l
	ld l, a
	jr nc, .noCarry
	inc h
.noCarry
	ld a, [hl]
	pop hl

.setPalette
	ld c, a
	ld a, $f8
	and [hl]
	or c
	ld [hl], a

.nextSprite
	inc hl
	dec b
	jr nz, .spriteLoop

.end
	xor a
	ldh [rSVBK], a
	ret

; Called whenever an animation plays in-battle. There are two animation tilesets, each
; with its own palette.
LoadAnimationTilesetPalettes:
	push de
	ld a, [wWhichBattleAnimTileset] ; Animation tileset (0-2)
	ld c, a
	ld a, 2
	ldh [rSVBK], a

	xor a
	ld [W2_UseOBP1], a

	call LoadAttackSpritePalettes

	; Indices 0 and 2 both refer to "AnimationTileset1", just different amounts of it.
	; 0 is in-battle, 2 is during a trade.
	; Index 1 refers to "AnimationTileset2".
	ld a, c
	cp 1
	ld hl, AnimationTileset2Palettes
	jr z, .gotPalette
	ld hl, AnimationTileset1Palettes
.gotPalette
	ld de, W2_SpritePaletteMap
	ld b, $80
.copyLoop
	ld a, [hli]
	ld [de], a
	inc e
	dec b
	jr nz, .copyLoop

	; If in a trade, some of the tiles near the end are different. Override some tiles
	; for the link cable, and replace the "purple" palette to match the exact color of
	; the link cable.
	ld a, c
	cp 2
	jr nz, .done

	; Replace ATK_PAL_PURPLE with PAL_MEWMON
	ld d, PAL_MEWMON
	ld e, ATK_PAL_PURPLE
	call LoadSGBPalette_Sprite

	; Set the link cable sprite tiles
	ld a, ATK_PAL_PURPLE
	ld hl, W2_SpritePaletteMap + $7e
	ld [hli], a
	ld [hli], a

.done
	ld a, 1
	ld [W2_ForceOBPUpdate], a

	xor a
	ldh [rSVBK], a

	pop de
	ret


; Set all sprite palettes to not be colorized by "ColorNonOverworldSprites".
ClearSpritePaletteMap:
	ldh a, [rSVBK]
	ld b, a
	ld a, 2
	ldh [rSVBK], a
	push bc

	ld hl, W2_SpritePaletteMap
	ld b, $0 ; $100
	ld a, 9
.loop
	ld [hli], a
	dec b
	jr nz, .loop

	pop af
	ldh [rSVBK], a
	ret


SpritePaletteAssignments: ; Characters on the overworld
	; 0x01: SPRITE_RED
	db SPR_PAL_ORANGE

	; 0x02: SPRITE_BLUE
	db SPR_PAL_BLUE

	; 0x03: SPRITE_OAK
	db SPR_PAL_BROWN

	; 0x04: SPRITE_BUG_CATCHER
	db SPR_PAL_RANDOM

	; 0x05: SPRITE_SLOWBRO
	db SPR_PAL_ORANGE

	; 0x06: SPRITE_LASS
	db SPR_PAL_RANDOM

	; 0x07: SPRITE_BLACK_HAIR_BOY_1
	db SPR_PAL_RANDOM

	; 0x08: SPRITE_LITTLE_GIRL
	db SPR_PAL_RANDOM

	; 0x09: SPRITE_BIRD
	db SPR_PAL_ORANGE

	; 0x0a: SPRITE_FAT_BALD_GUY
	db SPR_PAL_RANDOM

	; 0x0b: SPRITE_GAMBLER
	db SPR_PAL_RANDOM

	; 0x0c: SPRITE_BLACK_HAIR_BOY_2
	db SPR_PAL_RANDOM

	; 0x0d: SPRITE_GIRL
	db SPR_PAL_RANDOM

	; 0x0e: SPRITE_HIKER
	db SPR_PAL_RANDOM

	; 0x0f: SPRITE_FOULARD_WOMAN
	db SPR_PAL_RANDOM

	; 0x10: SPRITE_GENTLEMAN
	db SPR_PAL_BLUE

	; 0x11: SPRITE_DAISY
	db SPR_PAL_BLUE

	; 0x12: SPRITE_BIKER
	db SPR_PAL_RANDOM

	; 0x13: SPRITE_SAILOR
	db SPR_PAL_RANDOM

	; 0x14: SPRITE_COOK
	db SPR_PAL_RANDOM

	; 0x15: SPRITE_BIKE_SHOP_GUY
	db SPR_PAL_RANDOM

	; 0x16: SPRITE_MR_FUJI
	db SPR_PAL_GREEN

	; 0x17: SPRITE_GIOVANNI
	db SPR_PAL_BLUE

	; 0x18: SPRITE_ROCKET
	db SPR_PAL_BROWN

	; 0x19: SPRITE_MEDIUM
	db SPR_PAL_RANDOM

	; 0x1a: SPRITE_WAITER
	db SPR_PAL_RANDOM

	; 0x1b: SPRITE_ERIKA
	db SPR_PAL_RANDOM

	; 0x1c: SPRITE_MOM_GEISHA
	db SPR_PAL_RANDOM

	; 0x1d: SPRITE_BRUNETTE_GIRL
	db SPR_PAL_RANDOM

	; 0x1e: SPRITE_LANCE
	db SPR_PAL_ORANGE

	; 0x1f: SPRITE_OAK_SCIENTIST_AIDE
	db SPR_PAL_BROWN

	; 0x20: SPRITE_OAK_AIDE
	db SPR_PAL_BROWN

	; 0x21: SPRITE_ROCKER ($20)
	db SPR_PAL_RANDOM

	; 0x22: SPRITE_SWIMMER
	db SPR_PAL_RANDOM

	; 0x23: SPRITE_WHITE_PLAYER
	db SPR_PAL_RANDOM

	; 0x24: SPRITE_GYM_HELPER
	db SPR_PAL_RANDOM

	; 0x25: SPRITE_OLD_PERSON
	db SPR_PAL_RANDOM

	; 0x26: SPRITE_MART_GUY
	db SPR_PAL_RANDOM

	; 0x27: SPRITE_FISHER
	db SPR_PAL_RANDOM

	; 0x28: SPRITE_OLD_MEDIUM_WOMAN
	db SPR_PAL_RANDOM

	; 0x29: SPRITE_NURSE
	db SPR_PAL_ORANGE

	; 0x2a: SPRITE_CABLE_CLUB_WOMAN
	db SPR_PAL_GREEN

	; 0x2b: SPRITE_MR_MASTERBALL
	db SPR_PAL_PURPLE

	; 0x2c: SPRITE_LAPRAS_GIVER
	db SPR_PAL_RANDOM

	; 0x2d: SPRITE_WARDEN
	db SPR_PAL_RANDOM

	; 0x2e: SPRITE_SS_CAPTAIN
	db SPR_PAL_RANDOM

	; 0x2f: SPRITE_FISHER2
	db SPR_PAL_RANDOM

	; 0x30: SPRITE_BLACKBELT
	db SPR_PAL_RANDOM

	; 0x31: SPRITE_GUARD ($30)
	db SPR_PAL_BLUE

	; 0x32: $32
	db SPR_PAL_RANDOM

	; 0x33: SPRITE_MOM
	db SPR_PAL_ORANGE

	; 0x34: SPRITE_BALDING_GUY
	db SPR_PAL_RANDOM

	; 0x35: SPRITE_YOUNG_BOY
	db SPR_PAL_RANDOM

	; 0x36: SPRITE_GAMEBOY_KID
	db SPR_PAL_RANDOM

	; 0x37: SPRITE_GAMEBOY_KID_COPY
	db SPR_PAL_RANDOM

	; 0x38: SPRITE_CLEFAIRY
	db SPR_PAL_ORANGE

	; 0x39: SPRITE_AGATHA
	db SPR_PAL_BLUE

	; 0x3a: SPRITE_BRUNO
	db SPR_PAL_BROWN

	; 0x3b: SPRITE_LORELEI
	db SPR_PAL_ORANGE

	; 0x3c: SPRITE_SEEL
	db SPR_PAL_BLUE

	; 0x3d: SPRITE_BALL
	db SPR_PAL_ORANGE

	; 0x3e: SPRITE_OMANYTE
	db SPR_PAL_ROCK

	; 0x3f: SPRITE_BOULDER
	db SPR_PAL_ROCK

	; 0x40: SPRITE_PAPER_SHEET
	db SPR_PAL_BROWN

	; 0x41: SPRITE_BOOK_MAP_DEX
	db SPR_PAL_ORANGE

	; 0x42: SPRITE_CLIPBOARD
	db SPR_PAL_BROWN

	; 0x43: SPRITE_SNORLAX
	db SPR_PAL_ORANGE

	; 0x44: SPRITE_OLD_AMBER_COPY
	db SPR_PAL_ROCK

	; 0x45: SPRITE_OLD_AMBER
	db SPR_PAL_ROCK

	; 0x46: SPRITE_LYING_OLD_MAN_UNUSED_1
	db SPR_PAL_BROWN

	; 0x47: SPRITE_LYING_OLD_MAN_UNUSED_2
	db SPR_PAL_BROWN

	; 0x48: SPRITE_LYING_OLD_MAN
	db SPR_PAL_BROWN


AnimationTileset1Palettes:
	INCBIN "color/data/animtileset1palettes.bin"

AnimationTileset2Palettes:
	INCBIN "color/data/animtileset2palettes.bin"

TypeColorTable: ; Used for a select few sprites to be colorized based on attack type
	db 0 ; NORMAL EQU $00
	db 0 ; FIGHTING EQU $01
	db 0 ; FLYING EQU $02
	db 7 ; POISON EQU $03
	db 3 ; GROUND EQU $04
	db 3 ; ROCK EQU $05
	db 0
	db 5 ; BUG EQU $07
	db 7 ; GHOST EQU $08
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 0
	db 2 ; FIRE EQU $14
	db 1 ; WATER EQU $15
	db 5 ; GRASS EQU $16
	db 4 ; ELECTRIC EQU $17
	db 7 ; PSYCHIC EQU $18
	db 6 ; ICE EQU $19
	db 1 ; DRAGON EQU $1A

INCLUDE "color/data/spritepalettes.asm"
