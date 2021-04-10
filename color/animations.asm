; Hooks for engine/battle/animations.asm

_LoadAnimationTilesetPalettes:
	CALL_INDIRECT LoadAnimationTilesetPalettes
	ret

; Actually this doesn't do everything needed to spriteify
; It copies the tiles and the palette of the player pokemon.
SpriteifyPlayerPokemon:
	ld de, vBackPic
	ld hl, vSprites
	ld bc, 7 * 7
	call CopyVideoData

	ld a, 2
	ldh [rSVBK], a
	ld hl, W2_BgPaletteData
	ld de, W2_SprPaletteData
	ld bc, 8
	call CopyData

	ld a, 1
	ld [W2_LastOBP0], a

	xor a
	ldh [rSVBK], a
	ret
