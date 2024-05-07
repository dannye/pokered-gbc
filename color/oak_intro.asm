; Helper functions for oak intro

GetNidorinoPalID:
	call ClearScreen
IF DEF(_GEN_2_GRAPHICS)
	ld a, PAL_NIDORINO
ELSE
	ld a, PAL_PURPLEMON
ENDC
	jr GotPalID

GetRedPalID:
	call ClearScreen
IF DEF(_GEN_2_GRAPHICS)
	ld a, PAL_HERO
ELSE
	ld a, PAL_REDMON
ENDC
	jr GotPalID

GetRivalPalID:
	call ClearScreen
IF DEF(_GEN_2_GRAPHICS)
	ld a, PAL_GARY1
ELSE
	ld a, PAL_MEWMON
ENDC
	jr GotPalID

GotPalID:
	ld e, 0
	ld d, a

	ld a, 2
	ldh [rSVBK], a
	CALL_INDIRECT LoadSGBPalette
	xor a
	ldh [rSVBK], a
	ret

