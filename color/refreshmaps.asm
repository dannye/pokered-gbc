; Most of the functions here are called during vblank, maybe they belong in vblank.asm...


; Called when a map is loaded. Loads tilemap and tile attributes.
; LCD is disabled, so we have free reign over vram.
LoadMapVramAndColors::
	ld a, $02
	ldh [rWBK], a

	hlcoord 0, 0
	ld de, vBGMap0
	ld b, SCREEN_HEIGHT
.vramCopyLoop
	ld c, SCREEN_WIDTH
.vramCopyInnerLoop
	ld a, $01
	ldh [rVBK], a
	ld a, [hl]
	push hl
	ld h, W2_TilesetPaletteMap >> 8
	ld l, a
	ld a, [hl]
	ld [de], a
	pop hl
	xor a
	ldh [rVBK], a
	ld a, [hli]
	ld [de], a
	inc e

	dec c
	jr nz, .vramCopyInnerLoop
	ld a, TILEMAP_WIDTH - SCREEN_WIDTH
	add e
	ld e, a
	jr nc, .noCarry
	inc d
.noCarry
	dec b
	jr nz, .vramCopyLoop

	xor a
	ldh [rWBK], a
	ret



; Refresh 1/3 of the window each frame. Called during vblank.
RefreshWindow::
	ldh a, [hAutoBGTransferEnabled]
	and a
	ret z

	ld a, 2
	ldh [rWBK], a

	; Check that the pre-vblank functions have run already (if not, let it catch up)
	ld hl, W2_UpdatedWindowPortion
	ld a, [hl]
	and a
	jp z, .palettesDone
	ld [hl], 0

	ld hl, sp + 0
	ld a, h
	ldh [hSPTemp], a
	ld a, l
	ldh [hSPTemp + 1], a ; save stack pointer
	ldh a, [hAutoBGTransferPortion]
	and a
	jr z, .transferTopThird
	dec a
	jr z, .transferMiddleThird
.transferBottomThird
	hlcoord 0, 12
	ld sp, hl
	ldh a, [hAutoBGTransferDest + 1]
	ld h, a
	ldh a, [hAutoBGTransferDest]
	ld l, a
	ld de, (12 * 32)
	add hl, de
	xor a ; TRANSFERTOP
	jr .doTransfer
.transferTopThird
	hlcoord 0, 0
	ld sp, hl
	ldh a, [hAutoBGTransferDest + 1]
	ld h, a
	ldh a, [hAutoBGTransferDest]
	ld l, a
	ld a, TRANSFERMIDDLE
	jr .doTransfer
.transferMiddleThird
	hlcoord 0, 6
	ld sp, hl
	ldh a, [hAutoBGTransferDest + 1]
	ld h, a
	ldh a, [hAutoBGTransferDest]
	ld l, a
	ld de, (6 * 32)
	add hl, de
	ld a, TRANSFERBOTTOM

; sp now points to map data in wram, hl points to vram destination.
.doTransfer
	ldh [hAutoBGTransferPortion], a ; store next portion
	ld b, 6

.drawRow:
; unrolled loop and using pop for speed

REPT SCREEN_WIDTH / 2 - 1
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
ENDR
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	; Don't inc l this time.
	; Careful here, because credits break due to carry if you inc l and add a
	; with 12 instead of 13.

	ld a, 13
	add l
	ld l, a
	jr nc, .noCarry
	inc h
.noCarry
	dec b
	jr nz, .drawRow

	; Restore sp and set hl to point to destination again
	ld b, h
	ld c, l

	ldh a, [hSPTemp]
	ld h, a
	ldh a, [hSPTemp + 1]
	ld l, a
	ld sp, hl

	ld h, b
	ld l, c
	ld bc, -$c0
	add hl, bc

; BEGIN loading palette maps

	ld a, 1
	ldh [rVBK], a

	; Always update if using tile-based palettes
	ld a, [W2_TileBasedPalettes]
	and a
	jr nz, .continue

	; If using static palettes, we can check whether that's been updated
	ld a, [W2_StaticPaletteMapChanged_vbl]
	and a
	jr z, .palettesDone
	xor a
	ld [W2_StaticPaletteMapChanged_vbl], a

.continue

	; DMA from W2_ScreenPalettesBuffer to hl (window attribute map)
	ld c, $51
	ld a, W2_ScreenPalettesBuffer >> 8
	ld [$ff00+c], a
	inc c
	ld a, W2_ScreenPalettesBuffer & $ff
	ld [$ff00+c], a
	inc c
	ld a, h
	ld [$ff00+c], a
	inc c
	ld a, l
	ld [$ff00+c], a
	inc c

	ld a, 6 * 32 / $10 - 1
	ld [$ff00+c], a ; Start DMA transfer

.palettesDone
	xor a
	ldh [rVBK], a
	ldh [rWBK], a
	ret


; Replaces the "TransferBgRows" function. Called when menus first appear on top of bg
; layer. (called 3 times to fully draw it)
; b = # rows to copy
; hl = destination
; sp = source (need to restore sp after this)
WindowTransferBgRowsAndColors::
	; Store # of rows to ocpy
	ld a, $02
	ldh [rWBK], a
	ld a, b
	ld [W2_VBCOPYBGNUMROWS], a
	xor a
	ldh [rWBK], a

.nextRow
	ld c, l
; Copy tilemap
REPT SCREEN_WIDTH / 2 - 1
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
ENDR
	pop de
	ld [hl], e
	inc l
	ld [hl], d

	; Go back to start of row to do palettes
	ld l, c
	add sp, -SCREEN_WIDTH
	ld a, $01
	ldh [rVBK], a
	ld a, $02
	ldh [rWBK], a

	ld d, W2_TilesetPaletteMap >> 8
REPT SCREEN_WIDTH / 2
	pop bc
	ld e, c
	ld a, [de]
	ld [hli], a
	ld e, b
	ld a, [de]
	ld [hli], a
ENDR

	; Advance through "unused" tiles
	ld a, $0c
	add l
	ld l, a
	jr nc, .noCarry
	inc h
.noCarry
	ld a, [W2_VBCOPYBGNUMROWS]
	dec a
	ld [W2_VBCOPYBGNUMROWS], a

	ld a, $00 ; Don't xor so we don't change the flags
	ldh [rVBK], a
	ldh [rWBK], a

	; Jump if W2_VBCOPYBGNUMROWS is nonzero
	jp nz, .nextRow

	ldh a, [hSPTemp]
	ld h, a
	ldh a, [hSPTemp + 1]
	ld l, a
	ld sp, hl

	; Restore ROM bank (we obviously can't do that here, so jump to bank 0)
	ldh a, [hLoadedROMBank]
	jp SetRomBank


; Called when scrolling the screen vertically (at vblank)
DrawMapRow::
	ld a, 2
	ldh [rWBK], a

	ld a, 1
	ld [W2_DrewRowOrColumn], a

	ld hl, wRedrawRowOrColumnSrcTiles ; This is wram bank 0
	ldh a, [hRedrawRowOrColumnDest]
	ld e, a
	ldh a, [hRedrawRowOrColumnDest + 1]
	ld d, a
	push de
	call .drawHalf ; draw upper half
	pop de
	ld a, TILEMAP_WIDTH ; width of VRAM background map
	add e
	ld e, a
	call .drawHalf ; draw lower half

	; Start drawing palettes
	ld a, 1
	ldh [rVBK], a
	ld hl, wRedrawRowOrColumnSrcTiles
	ldh a, [hRedrawRowOrColumnDest]
	ld e, a
	ldh a, [hRedrawRowOrColumnDest + 1]
	ld d, a

	push de
	call .drawHalfPalette ; draw upper half
	pop de
	ld a, TILEMAP_WIDTH ; width of VRAM background map
	add e
	ld e, a
	call .drawHalfPalette ; draw lower half

	xor a
	ldh [rWBK], a
	ldh [rVBK], a
	ret

.drawHalf
	ld c, SCREEN_WIDTH / 2
.loop2
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld a, e
	inc a
; the following 6 lines wrap us from the right edge to the left edge if necessary
	and $1f
	ld b, a
	ld a, e
	and $e0
	or b
	ld e, a
	dec c
	jr nz, .loop2
	ret

.drawHalfPalette
	ld b, W2_TilesetPaletteMap >> 8
REPT 10
	ld a, [hli]
	ld c, a
	ld a, [bc]
	ld [de], a
	inc de
	ld a, [hli]
	ld c, a
	ld a, [bc]
	ld [de], a
	ld a, e
	inc a
; the following 6 lines wrap us from the right edge to the left edge if necessary
	and $1f
	ld c, a
	ld a, e
	and $e0
	or c
	ld e, a
ENDR
	ret


; Called when scrolling the screen horizontally (at vblank)
DrawMapColumn::
	ld a, 2
	ldh [rWBK], a

	ld a, 1
	ld [W2_DrewRowOrColumn], a

	; Draw tiles
	ld hl, wRedrawRowOrColumnSrcTiles
	ldh a, [hRedrawRowOrColumnDest]
	ld e, a
	ldh a, [hRedrawRowOrColumnDest + 1]
	ld d, a
	ld c, SCREEN_HEIGHT
.loop1
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld a, TILEMAP_WIDTH - 1
	add e
	ld e, a
	jr nc, .noCarry
	inc d
.noCarry
; the following 4 lines wrap us from bottom to top if necessary
	ld a, d
	and $3
	or $98
	ld d, a
	dec c
	jr nz, .loop1

; =======================
	; Draw palettes
	ld a, 1
	ldh [rVBK], a

	ld hl, wRedrawRowOrColumnSrcTiles
	ldh a, [hRedrawRowOrColumnDest]
	ld e, a
	ldh a, [hRedrawRowOrColumnDest + 1]
	ld d, a
	ld b, W2_TilesetPaletteMap >> 8
REPT SCREEN_HEIGHT
	ld a, [hli]
	ld c, a
	ld a, [bc]
	ld [de], a
	inc de
	ld a, [hli]
	ld c, a
	ld a, [bc]
	ld [de], a
	ld a, TILEMAP_WIDTH - 1
	add e
	ld e, a
	jr nc, .noCarry\@
	inc d
.noCarry\@
; the following 4 lines wrap us from bottom to top if necessary
	ld a, d
	and $03
	or $98
	ld d, a
ENDR

	xor a
	ldh [hRedrawRowOrColumnMode], a
	ldh [rVBK], a
	ldh [rWBK], a
	ret
