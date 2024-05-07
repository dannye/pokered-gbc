	db DEX_KAKUNA ; pokedex id

	db  45,  25,  50,  35,  25
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 120 ; catch rate
	db 71 ; base exp

IF DEF(_GEN_2_GRAPHICS)
	INCBIN "gfx/pokemon/gsfront/kakuna.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/kakuna.pic", 0, 1 ; sprite dimensions
ENDC
	dw KakunaPicFront, KakunaPicBack

	db HARDEN, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(KakunaPicFront)
