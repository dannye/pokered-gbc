	db DEX_RAICHU ; pokedex id

	db  60,  90,  55, 100,  90
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp

IF DEF(_GEN_2_GRAPHICS)
	INCBIN "gfx/pokemon/gsfront/raichu.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/raichu.pic", 0, 1 ; sprite dimensions
ENDC
	dw RaichuPicFront, RaichuPicBack

	db THUNDERSHOCK, GROWL, THUNDER_WAVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   PAY_DAY,      SUBMISSION,   SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     THUNDER_WAVE, SUBSTITUTE,   FLASH
	; end

	db BANK(RaichuPicFront)
