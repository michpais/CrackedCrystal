	db SEADRA ; 117

	db  55,  65,  95,  85,  95,  45
	evs  0,   0,   1,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 155 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/seadra/front.dimensions"
	db POISON_POINT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, DRAGONBREATH, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, ICE_BEAM, AVALANCHE, GIGA_IMPACT, FLASH_CANNON, DRAGON_PULSE, HAIL, WATER_PULSE, SURF, WHIRLPOOL, WATERFALL
	; end
