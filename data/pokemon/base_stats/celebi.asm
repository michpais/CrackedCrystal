	db CELEBI ; 251

	db 100, 100, 100, 100, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp
	db NO_ITEM, MIRACLEBERRY ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/celebi/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, SWIFT, DREAM_EATER, DETECT, REST, GIGA_IMPACT, ZEN_HEADBUTT, EARTH_POWER, AERIAL_ACE, SHOCK_WAVE, WATER_PULSE, MOONBLAST, DRAIN_KISS, LIGHT_SCREEN, REFLECT, FLASH
	; end
