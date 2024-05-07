	db DEX_WEEDLE ; pokedex id

	db  40,  35,  30,  50,  20
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 255 ; catch rate
	db 52 ; base exp

IF DEF(_GEN_2_GRAPHICS)
	INCBIN "gfx/pokemon/gsfront/weedle.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/weedle.pic", 0, 1 ; sprite dimensions
ENDC
	dw WeedlePicFront, WeedlePicBack

	db POISON_STING, STRING_SHOT, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(WeedlePicFront)
