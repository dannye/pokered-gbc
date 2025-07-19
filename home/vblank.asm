VBlank::

	push af
	push bc
	push de
	push hl

	ldh a, [hLoadedROMBank]
	ld [wVBlankSavedROMBank], a

	ldh a, [hSCX]
	ldh [rSCX], a
	ldh a, [hSCY]
	ldh [rSCY], a

	ld a, [wDisableVBlankWYUpdate]
	and a
	jr nz, .ok
	ldh a, [hWY]
	ldh [rWY], a
.ok

	call AutoBgMapTransfer
	call VBlankCopyBgMap
	call RedrawRowOrColumn
	call VBlankCopy
	call VBlankCopyDouble
	;call UpdateMovingBgTiles
	call hDMARoutine
	rst $10 ; HAX: VBlank hook (loads palettes)
	nop
	nop
	; HAX: don't update sprites here. They're updated elsewhere to prevent wobbliness.
	;ld a, BANK(PrepareOAMData)
	nop
	nop
	;ldh [hLoadedROMBank], a
	nop
	nop
	;ld [rROMB], a
	nop
	nop
	nop
	;call PrepareOAMData
	nop
	nop
	nop

	; VBlank-sensitive operations end.

	call Random

	ldh a, [hVBlankOccurred]
	and a
	jr z, .skipZeroing
	xor a
	ldh [hVBlankOccurred], a

.skipZeroing
	ldh a, [hFrameCounter]
	and a
	jr z, .skipDec
	dec a
	ldh [hFrameCounter], a

.skipDec
	call UpdateSound
;	call FadeOutAudio

;	ld a, [wAudioROMBank] ; music ROM bank
;	ldh [hLoadedROMBank], a
;	ld [rROMB], a

;	cp BANK(Audio1_UpdateMusic)
;	jr nz, .checkForAudio2
;.audio1
;	call Audio1_UpdateMusic
;	jr .afterMusic
;.checkForAudio2
;	cp BANK(Audio2_UpdateMusic)
;	jr nz, .audio3
;.audio2
;	call Music_DoLowHealthAlarm
;	call Audio2_UpdateMusic
;	jr .afterMusic
;.audio3
;	call Audio3_UpdateMusic
;.afterMusic

	farcall TrackPlayTime ; keep track of time played

	ldh a, [hDisableJoypadPolling]
	and a
	call z, ReadJoypad

	ld a, [wVBlankSavedROMBank]
	ldh [hLoadedROMBank], a
	ld [rROMB], a

	pop hl
	pop de
	pop bc
	pop af
	ret


DelayFrame::
; Wait for the next vblank interrupt.
; As a bonus, this saves battery.

DEF NOT_VBLANKED EQU 1

	call DelayFrameHook ; HAX
	nop
	;ld a, NOT_VBLANKED
	;ldh [hVBlankOccurred], a
.halt
	halt
	ldh a, [hVBlankOccurred]
	and a
	jr nz, .halt
	ret
