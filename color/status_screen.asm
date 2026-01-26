; Hooks for drawing exp bars in status_screen.asm

StatusScreenHook:
	; b = SET_PAL_STATUS_SCREEN
	call RunPaletteCommand
IF EXP_BAR_AND_CAUGHT_INDICATOR
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

; Only called when EXP_BAR_AND_CAUGHT_INDICATOR is set
StatusScreen2Hook:
	hlcoord 19, 1
	lb bc, 6, 10
	jp DrawLineBox ; Draws the box around name, HP and status
