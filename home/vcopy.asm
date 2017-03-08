; this function seems to be used only once
; it store the address of a row and column of the VRAM background map in hl
; INPUT: h - row, l - column, b - high byte of background tile map address in VRAM
GetRowColAddressBgMap::
	xor a
	srl h
	rr a
	srl h
	rr a
	srl h
	rr a
	or l
	ld l,a
	ld a,b
	or h
	ld h,a
	ret

; clears a VRAM background map with blank space tiles
; INPUT: h - high byte of background tile map address in VRAM
ClearBgMap::
	ld a," "
	jr .next
	ld a,l
.next
	ld de,$400 ; size of VRAM background map
	ld l,e
.loop
	ld [hli],a
	dec e
	jr nz,.loop
	dec d
	jr nz,.loop
	ret

; This function redraws a BG row of height 2 or a BG column of width 2.
; One of its main uses is redrawing the row or column that will be exposed upon
; scrolling the BG when the player takes a step. Redrawing only the exposed
; row or column is more efficient than redrawing the entire screen.
; However, this function is also called repeatedly to redraw the whole screen
; when necessary. It is also used in trade animation and elevator code.
; This function has beex HAXed to call other functions, which will also refresh palettes.
RedrawRowOrColumn::
	ld a,[hRedrawRowOrColumnMode]
	and a
	ret z
	ld b,a
	xor a
	ld [hRedrawRowOrColumnMode],a
	dec b
	jr nz,.redrawRow
	CALL_INDIRECT DrawMapColumn
	ret
.redrawRow
	CALL_INDIRECT DrawMapRow
	ret

SECTION "AutoBgMapTransfer", ROM0[$1d57]

; This function automatically transfers tile number data from the tile map at
; C3A0 to VRAM during V-blank. Note that it only transfers one third of the
; background per V-blank. It cycles through which third it draws.
; This transfer is turned off when walking around the map, but is turned
; on when talking to sprites, battling, using menus, etc. This is because
; the above function, RedrawRowOrColumn, is used when walking to
; improve efficiency.
AutoBgMapTransfer: ; HAXED function
	ld a,BANK(RefreshWindow)
	ld [MBC1RomBank],a
	call RefreshWindow
	ld a,[H_LOADEDROMBANK]
	ld [MBC1RomBank],a
	ret

; More HAX functions

_RefreshWindowInitial: ; 1d65
	ld a,BANK(RefreshWindowInitial)
	ld [$2000],a
	jp RefreshWindowInitial

HaxFunc3: ; 1d6d
	ld a,[H_LOADEDROMBANK]
	ld [$2000],a
	ret

; HAX: This function is reimplemented.
;TransferBgRows:: ; 1d9e (0:1d9e)
; unrolled loop and using pop for speed

; HAX: Squeeze this little function in here
_GbcPrepareVBlank:
	push af
	push bc
	push de
	push hl
	CALL_INDIRECT GbcPrepareVBlank
	pop hl
	pop de
	pop bc
	pop af
	reti

SECTION "JpPoint", ROM0[$1dde]

JpPoint:
	jp _RefreshWindowInitial	; HAX

; Copies [H_VBCOPYBGNUMROWS] rows from H_VBCOPYBGSRC to H_VBCOPYBGDEST.
; If H_VBCOPYBGSRC is XX00, the transfer is disabled.
VBlankCopyBgMap::
	ld a,[H_VBCOPYBGSRC] ; doubles as enabling byte
	and a
	ret z
	ld hl,[sp + 0]
	ld a,h
	ld [H_SPTEMP],a
	ld a,l
	ld [H_SPTEMP + 1],a ; save stack pointer
	ld a,[H_VBCOPYBGSRC]
	ld l,a
	ld a,[H_VBCOPYBGSRC + 1]
	ld h,a
	ld sp,hl
	ld a,[H_VBCOPYBGDEST]
	ld l,a
	ld a,[H_VBCOPYBGDEST + 1]
	ld h,a
	ld a,[H_VBCOPYBGNUMROWS]
	ld b,a
	xor a
	ld [H_VBCOPYBGSRC],a ; disable transfer so it doesn't continue next V-blank
	jr JpPoint	; HAX


VBlankCopyDouble::
; Copy [H_VBCOPYDOUBLESIZE] 1bpp tiles
; from H_VBCOPYDOUBLESRC to H_VBCOPYDOUBLEDEST.

; While we're here, convert to 2bpp.
; The process is straightforward:
; copy each byte twice.

	ld a, [H_VBCOPYDOUBLESIZE]
	and a
	ret z

	ld hl, [sp + 0]
	ld a, h
	ld [H_SPTEMP], a
	ld a, l
	ld [H_SPTEMP + 1], a

	ld a, [H_VBCOPYDOUBLESRC]
	ld l, a
	ld a, [H_VBCOPYDOUBLESRC + 1]
	ld h, a
	ld sp, hl

	ld a, [H_VBCOPYDOUBLEDEST]
	ld l, a
	ld a, [H_VBCOPYDOUBLEDEST + 1]
	ld h, a

	ld a, [H_VBCOPYDOUBLESIZE]
	ld b, a
	xor a ; transferred
	ld [H_VBCOPYDOUBLESIZE], a

.loop
	rept 3
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc l
	endr

	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc hl
	dec b
	jr nz, .loop

	ld a, l
	ld [H_VBCOPYDOUBLEDEST], a
	ld a, h
	ld [H_VBCOPYDOUBLEDEST + 1], a

	ld hl, [sp + 0]
	ld a, l
	ld [H_VBCOPYDOUBLESRC], a
	ld a, h
	ld [H_VBCOPYDOUBLESRC + 1], a

	ld a, [H_SPTEMP]
	ld h, a
	ld a, [H_SPTEMP + 1]
	ld l, a
	ld sp, hl

	ret


VBlankCopy::
; Copy [H_VBCOPYSIZE] 2bpp tiles (or 16 * [H_VBCOPYSIZE] tile map entries)
; from H_VBCOPYSRC to H_VBCOPYDEST.

; Source and destination addresses are updated,
; so transfer can continue in subsequent calls.

	ld a, [H_VBCOPYSIZE]
	and a
	ret z

	ld hl, [sp + 0]
	ld a, h
	ld [H_SPTEMP], a
	ld a, l
	ld [H_SPTEMP + 1], a

	ld a, [H_VBCOPYSRC]
	ld l, a
	ld a, [H_VBCOPYSRC + 1]
	ld h, a
	ld sp, hl

	ld a, [H_VBCOPYDEST]
	ld l, a
	ld a, [H_VBCOPYDEST + 1]
	ld h, a

	ld a, [H_VBCOPYSIZE]
	ld b, a
	xor a ; transferred
	ld [H_VBCOPYSIZE], a

.loop
	rept 7
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	endr

	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc hl
	dec b
	jr nz, .loop

	ld a, l
	ld [H_VBCOPYDEST], a
	ld a, h
	ld [H_VBCOPYDEST + 1], a

	ld hl, [sp + 0]
	ld a, l
	ld [H_VBCOPYSRC], a
	ld a, h
	ld [H_VBCOPYSRC + 1], a

	ld a, [H_SPTEMP]
	ld h, a
	ld a, [H_SPTEMP + 1]
	ld l, a
	ld sp, hl

	ret


UpdateMovingBgTiles::
; Animate water and flower
; tiles in the overworld.

	ld a, [hTilesetType]
	and a
	ret z ; no animations if indoors (or if a menu set this to 0)

	ld a, [hMovingBGTilesCounter1]
	inc a
	ld [hMovingBGTilesCounter1], a
	cp 20
	ret c
	cp 21
	jr z, FlowerTiles

; water

	ld hl, vTileset + $14 * $10
	ld c, $10

	; HAX
	ld a,BANK(label_2c_l000)
	ld [MBC1RomBank],a

	ld a, [wMovingBGTilesCounter2]
	inc a
	and 7
	ld [wMovingBGTilesCounter2], a

	and 4
	; HAX
	jp nz,label_2c_l000
	jp label_2c_l002

ReturnPoint::
	ld a,[H_LOADEDROMBANK]
	ld [MBC1RomBank],a

	ld a, [hTilesetType]
	rrca
	ret nc
; if in a cave, no flower animations
	xor a
	ld [hMovingBGTilesCounter1], a
	ret

FlowerTiles:
	xor a
	ld [hMovingBGTilesCounter1], a

	ld a, [wMovingBGTilesCounter2]
	and 3
	cp 2
	ld hl, FlowerTile1
	jr c, .copy
	ld hl, FlowerTile2
	jr z, .copy
	ld hl, FlowerTile3
.copy
	ld de, vTileset + $3 * $10
	ld c, $10
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	ret

FlowerTile1: INCBIN "gfx/tilesets/flower/flower1.2bpp"
FlowerTile2: INCBIN "gfx/tilesets/flower/flower2.2bpp"
FlowerTile3: INCBIN "gfx/tilesets/flower/flower3.2bpp"
