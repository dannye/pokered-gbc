	db DEX_IVYSAUR ; pokedex id

	db  60,  62,  63,  60,  80
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 141 ; base exp

IF DEF(_GEN_2_GRAPHICS)
	INCBIN "gfx/pokemon/gsfront/ivysaur.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/ivysaur.pic", 0, 1 ; sprite dimensions
ENDC
	dw IvysaurPicFront, IvysaurPicBack

	db TACKLE, GROWL, LEECH_SEED, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         REST,         SUBSTITUTE,   CUT
	; end

	db BANK(IvysaurPicFront)
