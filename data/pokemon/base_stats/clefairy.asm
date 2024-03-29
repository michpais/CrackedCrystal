	db CLEFAIRY ; 035

	db  70,  45,  48,  35,  60,  65
	evs  0,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 68 ; base exp
	db MYSTERYBERRY, MOON_STONE ; items
	db GENDER_F75 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/clefairy/front.dimensions"
	db CUTE_CHARM
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, DREAM_EATER, DETECT, REST, ATTRACT, FIRE_PUNCH, ICE_BEAM, ZEN_HEADBUTT, SHOCK_WAVE, WATER_PULSE, MOONBLAST, DRAIN_KISS, FLAMETHROWER, THUNDERBOLT, LIGHT_SCREEN, REFLECT, STRENGTH, FLASH
	; end
