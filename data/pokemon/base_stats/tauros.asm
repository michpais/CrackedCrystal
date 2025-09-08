	db TAUROS ; 128

	db  75, 100,  95, 110,  40,  70
	evs  0,   1,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 211 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/tauros/front.dimensions"
	db INTIMIDATE
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, ICE_BEAM, GIGA_IMPACT, SNARL, ZEN_HEADBUTT, PAYBACK, SHOCK_WAVE, WATER_PULSE, FLAMETHROWER, THUNDERBOLT, SURF, STRENGTH
	; end
