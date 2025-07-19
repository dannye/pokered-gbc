PewterGuys:
	ld hl, wSimulatedJoypadStatesEnd
	ld a, [wSimulatedJoypadStatesIndex]
	dec a ; this decrement causes it to overwrite the last byte before $FF in the list
	ld [wSimulatedJoypadStatesIndex], a
	ld d, 0
	ld e, a
	add hl, de
	ld d, h
	ld e, l
	ld hl, PewterGuysCoordsTable
	ld a, [wWhichPewterGuy]
	add a
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wYCoord]
	ld b, a
	ld a, [wXCoord]
	ld c, a
.findMatchingCoordsLoop
	ld a, [hli]
	cp b
	jr nz, .nextEntry1
	ld a, [hli]
	cp c
	jr nz, .nextEntry2
	ld a, [hli]
	ld h, [hl]
	ld l, a
.copyMovementDataLoop
	ld a, [hli]
	cp $ff
	ret z
	ld [de], a
	inc de
	ld a, [wSimulatedJoypadStatesIndex]
	inc a
	ld [wSimulatedJoypadStatesIndex], a
	jr .copyMovementDataLoop
.nextEntry1
	inc hl
.nextEntry2
	inc hl
	inc hl
	jr .findMatchingCoordsLoop

PewterGuysCoordsTable:
	dw PewterMuseumGuyCoords
	dw PewterGymGuyCoords

; these are the four coordinates of the spaces below, above, to the left and
; to the right of the museum guy, and pointers to different movements for
; the player to make to get positioned before the main movement.
PewterMuseumGuyCoords:
	db 18, 27
	dw .down
	db 16, 27
	dw .up
	db 17, 26
	dw .left
	db 17, 28
	dw .right

.down
	db PAD_UP, PAD_UP, $ff
.up
	db PAD_RIGHT, PAD_LEFT, $ff
.left
	db PAD_UP, PAD_RIGHT, $ff
.right
	db PAD_UP, PAD_LEFT, $ff

; these are the five coordinates which trigger the gym guy and pointers to
; different movements for the player to make to get positioned before the
; main movement
; $00 is a pause
PewterGymGuyCoords:
	db 16, 34
	dw .one
	db 17, 35
	dw .two
	db 18, 37
	dw .three
	db 19, 37
	dw .four
	db 17, 36
	dw .five

.one
	db PAD_LEFT, PAD_DOWN, PAD_DOWN, PAD_RIGHT, $ff
.two
	db PAD_LEFT, PAD_DOWN, PAD_RIGHT, PAD_LEFT, $ff
.three
	db PAD_LEFT, PAD_LEFT, PAD_LEFT, $00, $00, $00, $00, $00, $00, $00, $00, $ff
.four
	db PAD_LEFT, PAD_LEFT, PAD_UP, PAD_LEFT, $ff
.five
	db PAD_LEFT, PAD_DOWN, PAD_LEFT, $00, $00, $00, $00, $00, $00, $00, $00, $ff
