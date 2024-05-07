	db DEX_ZUBAT ; pokedex id

	db  40,  45,  35,  55,  40
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp

IF DEF(_GEN_2_GRAPHICS)
	INCBIN "gfx/pokemon/gsfront/zubat.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/zubat.pic", 0, 1 ; sprite dimensions
ENDC
	dw ZubatPicFront, ZubatPicBack

	db LEECH_LIFE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SWIFT,        REST,         SUBSTITUTE
	; end

	db BANK(ZubatPicFront)
