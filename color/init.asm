InitGbcMode:: ; Sets double speed & clears extra memory
	ld a, $01
	; Set double speed mode
	ldh [rSPD], a
	stop

	; Clear memory (banks 2-7)
ClearGbcMemory::
	ld d, 7
.clearBank
	ld a, d
	ldh [rWBK], a
	xor a
	ld hl, W2_BgPaletteData
	ld bc, $0f00 ; Leave a bit of space for the stack
	call FillMemory
	dec d
	ld a, d
	dec a
	jr nz, .clearBank

	xor a
	ldh [rWBK], a
	ret
