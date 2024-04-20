	db DEX_MAGIKARP ; pokedex id

	db  20,  10,  55,  80,  20
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 255 ; catch rate
	db 20 ; base exp

IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/magikarp.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/magikarp.pic", 0, 1 ; sprite dimensions
ENDC
	dw MagikarpPicFront, MagikarpPicBack

	db SPLASH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MagikarpPicFront)
