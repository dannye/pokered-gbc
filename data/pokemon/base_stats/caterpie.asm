	db DEX_CATERPIE ; pokedex id

	db  45,  30,  35,  45,  20
	;   hp  atk  def  spd  spc

	db BUG, BUG ; type
	db 255 ; catch rate
	db 53 ; base exp

IF DEF(_GEN_2_GRAPHICS)
	INCBIN "gfx/pokemon/gsfront/caterpie.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/caterpie.pic", 0, 1 ; sprite dimensions
ENDC
	dw CaterpiePicFront, CaterpiePicBack

	db TACKLE, STRING_SHOT, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(CaterpiePicFront)
