; Hooks for drawing exp bars in status_screen.asm

StatusScreenHook:
	; b = SET_PAL_STATUS_SCREEN
	call RunPaletteCommand
IF GEN_2_GRAPHICS
	decoord 18, 5
	ld a, [wBattleMonLevel]
	push af
	ld a, [wLoadedMonLevel]
	ld [wBattleMonLevel], a
	farcall PrintEXPBar
	pop af
	ld [wBattleMonLevel], a
ENDC
	ret

; Only called when GEN_2_GRAPHICS is set
StatusScreen2Hook:
	hlcoord 19, 1
	lb bc, 6, 10
	jp DrawLineBox ; Draws the box around name, HP and status
