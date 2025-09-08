	db STARMIE ; 121

	db  60,  75,  85, 115, 100,  85
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp
	db STARDUST, STAR_PIECE ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/starmie/front.dimensions"
	db NATURAL_CURE
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, THUNDER, RETURN, PSYCHIC_M, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, REST, ATTRACT, ICE_BEAM, AVALANCHE, GIGA_IMPACT, FLASH_CANNON, HAIL, WATER_PULSE, THUNDERBOLT, LIGHT_SCREEN, REFLECT, SURF, FLASH, WHIRLPOOL, WATERFALL
	; end
