	db DEX_FLAREON ; pokedex id

	db  65, 130,  60,  65, 110
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 198 ; base exp

IF DEF(_GEN_2_GRAPHICS)
	INCBIN "gfx/pokemon/gsfront/flareon.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/flareon.pic", 0, 1 ; sprite dimensions
ENDC
	dw FlareonPicFront, FlareonPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, EMBER ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(FlareonPicFront)
