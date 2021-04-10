; Macros for color hack

; rst $18 = bankswitch
CALL_INDIRECT: MACRO
	ld b, BANK(\1)
	ld hl, \1
	rst $18
ENDM

tilepal: MACRO
; vram bank, pals
; without some code rewrites, only vram0 is usable for now
x = \1 << 3
rept _NARG +- 1
	db (x | PAL_BG_\2)
	shift
endr
endm
