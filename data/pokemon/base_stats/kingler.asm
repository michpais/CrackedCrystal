	db KINGLER ; 099

	db  55, 130, 115,  75,  50,  50
	evs  0,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 206 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kingler/front.dimensions"
	db SHELL_ARMOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, THIEF, FURY_CUTTER, ICE_BEAM, AVALANCHE, GIGA_IMPACT, HAIL, WATER_PULSE, CUT, SURF, STRENGTH, WHIRLPOOL
	; end
