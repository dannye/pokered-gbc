
; Hook for "TradeCenter_DrawPartyLists" in engine/cable_club.asm.
; For some reason it doesn't have its own "palette command" that it calls, so this is the
; equivalent of that.
TradeCenter_DrawPartyLists_ColorHook:
	call LoadCableClubTextPaletteAndMap

	; Opcode removed for hook
	hlcoord 0, 0
	ret


; Called when the "PLEASE WAIT" text shows up on starting a trade or battle.
CableClub_DoBattleOrTrade_ColorHook:
	call LoadCableClubTextPaletteAndMap

	; Opcode removed for hook
	hlcoord 4, 10
	ret

LoadCableClubTextPaletteAndMap:
	ld a, 2
	ldh [rWBK], a

	call LoadCableClubTextPalette

	; Set everything to use palette 7
	ld a, PAL_BG_TEXT ; palette 7
	ld hl, W2_TilesetPaletteMap
	ld bc, $100
	call FillMemory

	ld a, 1
	ld [W2_TileBasedPalettes], a
	ld a, 3
	ld [W2_StaticPaletteMapChanged], a

	xor a
	ldh [rWBK], a
	ret

LoadCableClubTextPalette:
	; Load red or blue color in all palettes (only palette 7 is important, but loading
	; all palettes prevents minor artifacts)
IF DEF(_RED)
	ld d, PAL_REDMON
ENDC
IF DEF(_BLUE)
	ld d, PAL_BLUEMON
ENDC
	ld e, 0
.loop:
	push de
	farcall LoadSGBPalette
	pop de
	inc e
	ld a, e
	cp 8
	jr nz, .loop

	ld a, 1
	ld [W2_ForceBGPUpdate], a
	ret


; Called whenever the "Waiting..." text appears
PrintWaitingText::
	; If in-battle, we don't want to ruin the palettes
	ld a, [wIsInBattle]
	or a
	jr nz, .end
	call LoadCableClubTextPaletteAndMap
.end
	jpfar PrintWaitingText_orig
