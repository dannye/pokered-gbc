	db DEX_EKANS ; pokedex id

	db  35,  60,  44,  55,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp

IF DEF(_GEN_2_GRAPHICS)
	INCBIN "gfx/pokemon/gsfront/ekans.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/ekans.pic", 0, 1 ; sprite dimensions
ENDC
	dw EkansPicFront, EkansPicBack

	db WRAP, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MEGA_DRAIN,   EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   STRENGTH
	; end

	db BANK(EkansPicFront)
