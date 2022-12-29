; This gets run when you try to play it on a DMG. Shows an error message, plays a jingle.
; There's a copy of the audio engine in bank $31 that's used for this, hasn't been
; disassembled for now...

RunDmgError::
	ld hl, Code_d000
	ld de, $d000
	ld b, Code_d000_end - Code_d000

.codeCopyLoop
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .codeCopyLoop

;	xor a
;	ld [wAudioFadeOutCounterReloadValue], a
;	ld [wAudioFadeOutCounter], a

	; Use sound engine copy in bank $31
;	ld a, $31
;	ld [wAudioSavedROMBank], a
;	ld [wAudioROMBank], a

;	ld a, $c3
;	ld [wAudioFadeOutControl], a

	di
	call DisableLCD

	; Load font
	ld de, FontCopy
	ld bc, (FontCopyEnd - FontCopy) / 2
	ld hl, vFont

.nextByte
	ld a, [de]
	ld [hli], a
	ld [hli], a
	inc de
	dec bc
	ld a, c
	or b
	jr nz, .nextByte

	; Load text

	ld de, DmgText
	lb bc, 4, 20
	hlbgcoord 0, 7

.nextCharacter
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .nextCharacter

	push de
	ld de, 32 - 20
	add hl, de
	pop de
	ld c, 20
	dec b
	jr nz, .nextCharacter

	call EnableLCD
	ei
	jp $d000


; Copied to RAM at $d000
Code_d000:
;	push af
;	push bc
;	push de
;	push hl
;	farcall FadeOutAudio
;	ld a, [wAudioROMBank]
;	ldh [hLoadedROMBank], a
;	ld [MBC1RomBank], a
;	call $5177 ; Audio4_UpdateMusic
;	pop hl
;	pop de
;	pop bc
;	pop af
	ld hl, rSTAT
.frameWait
	bit 2, [hl]
	jr z, .frameWait
	jr Code_d000
Code_d000_end:



FontCopy:
	INCBIN "gfx/font/font.1bpp"
FontCopyEnd:

DmgText:
	db "This game will only "
	db "     work on a      "
	db "   Gameboy Color    "
	db "  or GBA handheld   "
