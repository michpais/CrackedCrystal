	db SNEASEL ; 215

	db  65, 105,  65, 125,  45,  85
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, ICE ; type
	db 60 ; catch rate
	db 132 ; base exp
	db NO_ITEM, QUICK_CLAW ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/sneasel/front.dimensions"
	db INNER_FOCUS
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, DIG, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, DETECT, REST, ATTRACT, THIEF, FURY_CUTTER, ICE_BEAM, AVALANCHE, SNARL, SHADOW_CLAW, DARK_PULSE, AERIAL_ACE, PAYBACK, HAIL, REFLECT, CUT, SURF, STRENGTH
	; end
