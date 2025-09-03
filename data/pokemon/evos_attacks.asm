SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 14, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 19, RAZOR_LEAF
	db 21, SWEET_SCENT
	db 25, GROWTH
	db 27, DOUBLE_EDGE
	db 30, LEAF_BLADE
	db 33, SYNTHESIS
	db 37, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 3, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 14, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 20, RAZOR_LEAF
	db 23, SWEET_SCENT
	db 28, GROWTH
	db 31, DOUBLE_EDGE
	db 35, LEAF_BLADE
	db 39, SYNTHESIS
	db 44, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 3, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 14, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 20, RAZOR_LEAF
	db 23, SWEET_SCENT
	db 28, GROWTH
	db 31, DOUBLE_EDGE
	db 32, PETAL_DANCE
	db 38, LEAF_BLADE
	db 45, SYNTHESIS
	db 53, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 13, RAGE
	db 16, DRAGON_RAGE
	db 19, SCARY_FACE
	db 25, FLAME_WHEEL
	db 28, FLAMETHROWER
	db 34, SLASH
	db 37, FIRE_SPIN
	db 43, FIRE_BLAST
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 13, RAGE
	db 16, DRAGON_RAGE
	db 21, SCARY_FACE
	db 28, FLAME_WHEEL
	db 32, FLAMETHROWER
	db 39, SLASH
	db 43, FIRE_SPIN
	db 50, FIRE_BLAST
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, AIR_SLASH
	db 1, EMBER
	db 1, SMOKESCREEN
	db 7, EMBER
	db 10, SMOKESCREEN
	db 13, RAGE
	db 16, DRAGON_RAGE
	db 21, SCARY_FACE
	db 28, FLAME_WHEEL
	db 32, FLAMETHROWER
	db 36, WING_ATTACK
	db 41, SLASH
	db 45, DRAGON_CLAW
	db 47, FIRE_SPIN
	db 50, AIR_SLASH
	db 56, FIRE_BLAST
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 16, BITE
	db 19, RAPID_SPIN
	db 22, PROTECT
	db 25, WATER_PULSE
	db 28, AQUA_TAIL
	db 31, BODY_SLAM
	db 33, IRON_DEFENSE
	db 34, RAIN_DANCE
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, BUBBLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 16, BITE
	db 20, RAPID_SPIN
	db 24, PROTECT
	db 28, WATER_PULSE
	db 32, AQUA_TAIL
	db 36, BODY_SLAM
	db 40, IRON_DEFENSE
	db 42, RAIN_DANCE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, BUBBLE
	db 1, WITHDRAW
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 16, BITE
	db 20, RAPID_SPIN
	db 24, PROTECT
	db 28, WATER_PULSE
	db 32, AQUA_TAIL
	db 36, BODY_SLAM
	db 46, IRON_DEFENSE
	db 53, RAIN_DANCE
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 15, BUG_BITE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 12, POISONPOWDER
	db 13, STUN_SPORE
	db 14, SLEEP_POWDER
	db 16, GUST
	db 18, SUPERSONIC
	db 22, AERIAL_ACE
	db 24, PSYBEAM
	db 28, AIR_SLASH
	db 36, SAFEGUARD
	db 42, BUG_BUZZ
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 15, BUG_BITE
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_ATTACK
	db 10, FURY_ATTACK
	db 13, FOCUS_ENERGY
	db 16, ACID
	db 19, RAGE
	db 22, PURSUIT
	db 25, TOXIC
	db 28, PIN_MISSILE
	db 31, AGILITY
	db 34, FAINT_ATTACK
	db 37, POISON_JAB
	db 45, BUG_BUZZ
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, EMBER
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, WING_ATTACK
	db 21, TWISTER
	db 29, AGILITY
	db 33, AERIAL_ACE
	db 37, RECOVER
	db 41, MIRROR_MOVE
	db 45, AIR_SLASH
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 5, SAND_ATTACK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 17, WING_ATTACK
	db 22, TWISTER
	db 32, AGILITY
	db 37, AERIAL_ACE
	db 42, RECOVER
	db 47, MIRROR_MOVE
	db 57, AIR_SLASH
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 1, QUICK_ATTACK
	db 5, SAND_ATTACK
	db 9, GUST
	db 17, WING_ATTACK
	db 22, TWISTER
	db 32, AGILITY
	db 38, AERIAL_ACE
	db 44, RECOVER
	db 56, MIRROR_MOVE
	db 62, AIR_SLASH
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 13, BITE
	db 16, HYPER_FANG
	db 19, PURSUIT
	db 22, FAINT_ATTACK
	db 28, CRUNCH
	db 31, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 13, BITE
	db 16, HYPER_FANG
	db 19, PURSUIT
	db 20, SCARY_FACE
	db 24, FAINT_ATTACK
	db 34, CRUNCH
	db 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, LEER
	db 9, FURY_ATTACK
	db 13, PURSUIT
	db 17, AERIAL_ACE
	db 21, MIRROR_MOVE
	db 25, AGILITY
	db 29, FAINT_ATTACK
	db 33, RECOVER
	db 37, DRILL_PECK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, LEER
	db 1, FURY_ATTACK
	db 5, LEER
	db 9, FURY_ATTACK
	db 13, PURSUIT
	db 17, AERIAL_ACE
	db 23, MIRROR_MOVE
	db 29, AGILITY
	db 35, FAINT_ATTACK
	db 41, RECOVER
	db 47, DRILL_PECK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 25, SLUDGE
	db 43, SLUDGE_BOMB
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, POISON_STING
	db 1, BITE
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 28, SLUDGE
	db 33, CRUNCH
	db 48, SLUDGE_BOMB
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 5, GROWL
	db 6, TAIL_WHIP
	db 10, QUICK_ATTACK
	db 13, THUNDER_WAVE
	db 15, DOUBLE_TEAM
	db 18, SPARK
	db 24, BODY_SLAM
	db 29, THUNDERBOLT
	db 37, AGILITY
	db 42, DISCHARGE
	db 41, LIGHT_SCREEN
	db 50, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 3, SAND_ATTACK
	db 5, POISON_STING
	db 6, DEFENSE_CURL
	db 7, ROLLOUT
	db 11, SWIFT
	db 14, FURY_CUTTER
	db 17, MAGNITUDE
	db 20, FURY_SWIPES
	db 26, SLASH
	db 30, DIG
	db 38, SWORDS_DANCE
	db 42, SANDSTORM
	db 46, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SAND_ATTACK
	db 3, SAND_ATTACK
	db 5, POISON_STING
	db 6, DEFENSE_CURL
	db 7, ROLLOUT
	db 11, SWIFT
	db 14, FURY_CUTTER
	db 17, MAGNITUDE
	db 20, FURY_SWIPES
	db 26, SLASH
	db 30, DIG
	db 38, SWORDS_DANCE
	db 42, SANDSTORM
	db 46, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 7, TAIL_WHIP
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_SWIPES
	db 21, BITE
	db 25, POISON_JAB
	db 37, CRUNCH
	db 45, SLUDGE_BOMB
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 7, TAIL_WHIP
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_SWIPES
	db 23, BITE
	db 28, POISON_JAB
	db 43, CRUNCH
	db 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCRATCH
	db 1, DOUBLE_KICK
	db 1, TAIL_WHIP
	db 35, BODY_SLAM
	db 43, EARTH_POWER
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_ATTACK
	db 21, HORN_ATTACK
	db 25, POISON_JAB
	db 37, CRUNCH
	db 45, SLUDGE_BOMB
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_ATTACK
	db 23, HORN_ATTACK
	db 28, POISON_JAB
	db 43, CRUNCH
	db 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HORN_ATTACK
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 35, THRASH
	db 43, EARTHQUAKE
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 7, SING
	db 10, DOUBLESLAP
	db 13, DEFENSE_CURL
	db 19, MINIMIZE
	db 22, BODY_SLAM
	db 25, LIGHT_SCREEN
	db 31, METRONOME
	db 43, RECOVER
	db 50, MOONBLAST
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DOUBLESLAP
	db 1, METRONOME
	db 1, RECOVER
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 12, FIRE_SPIN
	db 13, ROAR
	db 15, CONFUSE_RAY
	db 20, FAINT_ATTACK
	db 23, FLAME_WHEEL
	db 26, WILL_O_WISP
	db 28, HEX
	db 31, PAYBACK
	db 34, FLAMETHROWER
	db 36, SAFEGUARD
	db 39, EXTRASENSORY
	db 42, FIRE_BLAST
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 48, NASTY_PLOT
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, DEFENSE_CURL
	db 7, POUND
	db 13, DISABLE
	db 17, ROLLOUT
	db 24, DOUBLESLAP
	db 29, REST
	db 33, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 45, MIMIC
	db 50, MOONBLAST
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DISABLE
	db 1, DEFENSE_CURL
	db 1, DOUBLESLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 5, SUPERSONIC
	db 11, BITE
	db 13, WING_ATTACK
	db 17, CONFUSE_RAY
	db 19, AIR_SLASH
	db 23, SWIFT
	db 25, POISON_JAB
	db 29, MEAN_LOOK
	db 31, AERIAL_ACE
	db 37, SLUDGE_BOMB
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 11, BITE
	db 13, WING_ATTACK
	db 17, CONFUSE_RAY
	db 19, AIR_SLASH
	db 24, SWIFT
	db 27, POISON_JAB
	db 32, MEAN_LOOK
	db 35, AERIAL_ACE
	db 43, SLUDGE_BOMB
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, SWEET_SCENT
	db 9, ACID
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 21, MEGA_DRAIN
	db 33, SYNTHESIS
	db 37, GIGA_DRAIN
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, POISONPOWDER
	db 5, SWEET_SCENT
	db 9, ACID
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 21, MEGA_DRAIN
	db 41, SYNTHESIS
	db 47, GIGA_DRAIN
	db 53, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, STUN_SPORE
	db 7, POISONPOWDER
	db 11, LEECH_LIFE
	db 17, FURY_CUTTER
	db 22, SPORE
	db 27, SLASH
	db 33, GROWTH
	db 38, GIGA_DRAIN
	db 54, BUG_BUZZ
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 6, STUN_SPORE
	db 7, POISONPOWDER
	db 11, LEECH_LIFE
	db 17, FURY_CUTTER
	db 22, SPORE
	db 29, SLASH
	db 37, GROWTH
	db 44, GIGA_DRAIN
	db 59, BUG_BUZZ
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, LEECH_LIFE
	db 23, STUN_SPORE
	db 25, PSYBEAM
	db 29, SLEEP_POWDER
	db 35, BUG_BUZZ
	db 37, ZEN_HEADBUTT
	db 41, SLUDGE_BOMB
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, LEECH_LIFE
	db 23, STUN_SPORE
	db 25, PSYBEAM
	db 29, SLEEP_POWDER
	db 37, BUG_BUZZ
	db 41, ZEN_HEADBUTT
	db 47, SLUDGE_BOMB
	db 55, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, GROWL
	db 5, SAND_ATTACK
	db 7, FURY_SWIPES
	db 12, MUD_SLAP
	db 15, MAGNITUDE
	db 20, MUD_SHOT
	db 25, DIG
	db 29, EARTH_POWER
	db 34, SLASH
	db 40, EARTHQUAKE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 1, MAGNITUDE
	db 4, GROWL
	db 5, SAND_ATTACK
	db 7, FURY_SWIPES
	db 12, MUD_SLAP
	db 15, MAGNITUDE
	db 20, MUD_SHOT
	db 25, DIG
	db 33, EARTH_POWER
	db 45, SLASH
	db 50, EARTHQUAKE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, QUICK_ATTACK
	db 14, FURY_SWIPES
	db 17, SCREECH
	db 22, FAINT_ATTACK
	db 30, PAY_DAY
	db 33, SLASH
	db 38, NASTY_PLOT
	db 41, DARK_PULSE
	db 49, NIGHT_SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, BITE
	db 6, BITE
	db 9, QUICK_ATTACK
	db 14, FURY_SWIPES
	db 17, SCREECH
	db 22, FAINT_ATTACK
	db 28, SWIFT
	db 32, ANCIENTPOWER
	db 37, SLASH
	db 44, NASTY_PLOT
	db 49, DARK_PULSE
	db 61, NIGHT_SLASH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, TAIL_WHIP
	db 8, WATER_GUN
	db 11, DISABLE
	db 15, CONFUSION
	db 18, WATER_PULSE
	db 22, FURY_SWIPES
	db 25, SCREECH
	db 29, ZEN_HEADBUTT
	db 32, AQUA_TAIL
	db 39, CALM_MIND
	db 43, AMNESIA
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 1, DISABLE
	db 1, CONFUSION
	db 4, TAIL_WHIP
	db 8, WATER_GUN
	db 11, DISABLE
	db 15, CONFUSION
	db 18, WATER_PULSE
	db 22, FURY_SWIPES
	db 25, SCREECH
	db 29, ZEN_HEADBUTT
	db 32, AQUA_TAIL
	db 43, CALM_MIND
	db 49, AMNESIA
	db 54, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 5, LOW_KICK
	db 9, FURY_SWIPES
	db 13, KARATE_CHOP
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, PURSUIT
	db 33, SWAGGER
	db 37, CROSS_CHOP
	db 41, THRASH
	db 45, FAINT_ATTACK
	db 49, VITAL_THROW
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LOW_KICK
	db 1, RAGE
	db 5, LOW_KICK
	db 9, FURY_SWIPES
	db 13, KARATE_CHOP
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, PURSUIT
	db 28, RAGE
	db 35, SWAGGER
	db 41, CROSS_CHOP
	db 47, THRASH
	db 53, FAINT_ATTACK
	db 59, VITAL_THROW
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ROAR
	db 6, EMBER
	db 8, LEER
	db 17, FLAME_WHEEL
	db 19, REVERSAL
	db 23, TAKE_DOWN
	db 28, FLAMETHROWER
	db 30, AGILITY
	db 33, SNARL
	db 36, WILL_O_WISP
	db 39, CRUNCH
	db 41, FIRE_BLAST
	db 43, OUTRAGE
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROAR
	db 1, LEER
	db 1, TAKE_DOWN
	db 1, FLAME_WHEEL
	db 34, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 8, HYPNOSIS
	db 11, BUBBLE
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 25, BUBBLEBEAM
	db 28, MUD_SHOT
	db 31, BELLY_DRUM
	db 38, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, HYPNOSIS
	db 1, WATER_GUN
	db 8, HYPNOSIS
	db 11, BUBBLE
	db 15, DOUBLESLAP
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 27, BUBBLEBEAM
	db 32, MUD_SHOT
	db 37, BELLY_DRUM
	db 43, KARATE_CHOP
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, SUBMISSION
	db 32, DYNAMICPUNCH
	db 35, SUBMISSION
	db 43, MIND_READER
	db 48, KARATE_CHOP
	db 53, VITAL_THROW
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_LEVEL, 37, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 23, MIND_READER
	db 26, RECOVER
	db 28, PSYCHO_CUT
	db 31, REFLECT
	db 33, KINESIS
	db 38, PSYCHIC_M
	db 43, FUTURE_SIGHT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 23, MIND_READER
	db 26, RECOVER
	db 28, PSYCHO_CUT
	db 31, REFLECT
	db 33, KINESIS
	db 38, PSYCHIC_M
	db 41, CALM_MIND
	db 43, FUTURE_SIGHT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 9, FORESIGHT
	db 13, MACH_PUNCH
	db 15, SEISMIC_TOSS
	db 19, REVENGE
	db 25, VITAL_THROW
	db 33, SUBMISSION
	db 37, BULK_UP
	db 39, CROSS_CHOP
	db 43, SCARY_FACE
	db 45, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_LEVEL, 37, MACHAMP
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 9, FORESIGHT
	db 13, MACH_PUNCH
	db 15, SEISMIC_TOSS
	db 19, REVENGE
	db 25, VITAL_THROW
	db 37, SUBMISSION
	db 40, BULK_UP
	db 44, CROSS_CHOP
	db 51, SCARY_FACE
	db 55, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 9, FORESIGHT
	db 13, MACH_PUNCH
	db 15, SEISMIC_TOSS
	db 19, REVENGE
	db 25, VITAL_THROW
	db 37, SUBMISSION
	db 40, BULK_UP
	db 44, CROSS_CHOP
	db 51, SCARY_FACE
	db 55, DYNAMICPUNCH
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
	db 27, FURY_CUTTER
	db 29, SWEET_SCENT
	db 35, SLUDGE_BOMB
	db 39, RAZOR_LEAF
	db 41,BODY_SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 23, ACID
	db 27, FURY_CUTTER
	db 29, SWEET_SCENT
	db 35, SLUDGE_BOMB
	db 39, RAZOR_LEAF
	db 41,BODY_SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 47, LEAF_BLADE
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, SUPERSONIC
	db 7, WRAP
	db 10, ACID
	db 16, WATER_PULSE
	db 22, SLUDGE
	db 25, BUBBLEBEAM
	db 28, REFLECT
	db 31, POISON_JAB
	db 37, SCREECH
	db 40, HEX
	db 43, SLUDGE_BOMB
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SUPERSONIC
	db 1, WRAP
	db 4, SUPERSONIC
	db 7, WRAP
	db 10, ACID
	db 16, WATER_PULSE
	db 22, SLUDGE
	db 25, BUBBLEBEAM
	db 28, REFLECT
	db 32, POISON_JAB
	db 40, SCREECH
	db 44, HEX
	db 48, SLUDGE_BOMB
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 6, DEFENSE_CURL
	db 10, ROCK_THROW
	db 16, MAGNITUDE
	db 18, ROLLOUT
	db 24, SELFDESTRUCT
	db 28, ROCK_BLAST
	db 34, ROCK_SLIDE
	db 39, EARTHQUAKE
	db 43, DOUBLE_EDGE
	db 46, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_LEVEL, 37, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 6, DEFENSE_CURL
	db 10, ROCK_THROW
	db 16, MAGNITUDE
	db 18, ROLLOUT
	db 24, SELFDESTRUCT
	db 30, ROCK_BLAST
	db 36, ROCK_SLIDE
	db 40, EARTHQUAKE
	db 44, DOUBLE_EDGE
	db 47, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 6, DEFENSE_CURL
	db 10, ROCK_THROW
	db 16, MAGNITUDE
	db 18, ROLLOUT
	db 24, SELFDESTRUCT
	db 30, ROCK_BLAST
	db 36, ROCK_SLIDE
	db 40, EARTHQUAKE
	db 44, DOUBLE_EDGE
	db 47, EXPLOSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, TAIL_WHIP
	db 9, EMBER
	db 13, FLAME_WHEEL
	db 17, STOMP
	db 23, FIRE_SPIN
	db 25, WILL_O_WISP
	db 29, TAKE_DOWN
	db 33, FLAMETHROWER
	db 37, AGILITY
	db 41, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, EMBER
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 29, WILL_O_WISP
	db 34, TAKE_DOWN
	db 37, AGILITY
	db 40, FURY_ATTACK
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, ZEN_HEADBUTT
	db 36, RECOVER
	db 41, AMNESIA
	db 45, PSYCHIC_M
	db 49, RAIN_DANCE
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, ZEN_HEADBUTT
	db 36, RECOVER
	db 37, WITHDRAW
	db 43, AMNESIA
	db 49, PSYCHIC_M
	db 55, RAIN_DANCE
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, SUPERSONIC
	db 7, THUNDERSHOCK
	db 11, SONICBOOM
	db 15, THUNDER_WAVE
	db 19, SPARK
	db 23, FLASH_CANNON
	db 25, SWIFT
	db 29, THUNDERBOLT
	db 35, SCREECH
	db 43, ZAP_CANNON
	db 50, THUNDER
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, SUPERSONIC
	db 1, SONICBOOM
	db 4, SUPERSONIC
	db 7, THUNDERSHOCK
	db 11, SONICBOOM
	db 15, THUNDER_WAVE
	db 19, SPARK
	db 23, FLASH_CANNON
	db 25, SWIFT
	db 29, THUNDERBOLT
	db 39, SCREECH
	db 53, ZAP_CANNON
	db 60, THUNDER
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SAND_ATTACK
	db 1, LEER
	db 7, FURY_ATTACK
	db 9, AERIAL_ACE
	db 13, PURSUIT
	db 19, SLASH
	db 21, AIR_SLASH
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 33, NIGHT_SLASH
	db 37, FAINT_ATTACK
	db 44, FALSE_SWIPE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, QUICK_ATTACK
	db 9, RAGE
	db 13, FURY_ATTACK
	db 17, PURSUIT
	db 21, TRI_ATTACK
	db 25, AERIAL_ACE
	db 29, FAINT_ATTACK
	db 33, AGILITY
	db 37, DRILL_PECK
	db 49, THRASH
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, PURSUIT
	db 1, FURY_ATTACK
	db 5, QUICK_ATTACK
	db 9, RAGE
	db 13, FURY_ATTACK
	db 17, PURSUIT
	db 21, TRI_ATTACK
	db 25, AERIAL_ACE
	db 29, FAINT_ATTACK
	db 35, AGILITY
	db 41, DRILL_PECK
	db 59, THRASH
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 3, GROWL
	db 11, ICY_WIND
	db 13, ENCORE
	db 17, AURORA_BEAM
	db 21, REST
	db 27, POWDER_SNOW
	db 31, AQUA_JET
	db 33, TAKE_DOWN
	db 37, AQUA_TAIL
	db 43, ICE_BEAM
	db 48, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, GROWL
	db 1, AURORA_BEAM
	db 3, GROWL
	db 11, ICY_WIND
	db 13, ENCORE
	db 17, AURORA_BEAM
	db 21, REST
	db 27, POWDER_SNOW
	db 31, AQUA_JET
	db 33, TAKE_DOWN
	db 39, AQUA_TAIL
	db 55, ICE_BEAM
	db 61, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 4, HARDEN
	db 7, MUD_SLAP
	db 12, DISABLE
	db 15, SLUDGE
	db 18, MINIMIZE
	db 21, MUD_SHOT
	db 26, NIGHT_SLASH
	db 32, SCREECH
	db 37, SLUDGE_BOMB
	db 40, ACID_ARMOR
	db 43, POISON_JAB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, POISON_GAS
	db 1, POUND
	db 1, HARDEN
	db 4, HARDEN
	db 7, MUD_SLAP
	db 12, DISABLE
	db 15, SLUDGE
	db 18, MINIMIZE
	db 21, MUD_SHOT
	db 26, NIGHT_SLASH
	db 32, SCREECH
	db 37, SLUDGE_BOMB
	db 43, ACID_ARMOR
	db 49, POISON_JAB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 8, SUPERSONIC
	db 13, ICY_WIND
	db 16, PROTECT
	db 20, AVALANCHE
	db 25, LEER
	db 28, AURORA_BEAM
	db 32, WATER_PULSE
	db 37, WHIRLPOOL
	db 40, ICE_BEAM
	db 42, HYDRO_PUMP
	db 45, BLIZZARD
	db 49, IRON_DEFENSE
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 49, IRON_DEFENSE
	db 50, SPIKES
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 5, SPITE
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, FAINT_ATTACK
	db 26, PAYBACK
	db 29, SHADOW_BALL
	db 33, DREAM_EATER
	db 36, DARK_PULSE
	db 40, DESTINY_BOND
	db 43, HEX
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL, 37, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 5, SPITE
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, FAINT_ATTACK
	db 25, SHADOW_CLAW
	db 28, PAYBACK
	db 33, SHADOW_BALL
	db 39, DREAM_EATER
	db 44, DARK_PULSE
	db 50, DESTINY_BOND
	db 55, HEX
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 5, SPITE
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, FAINT_ATTACK
	db 25, SHADOW_CLAW
	db 28, PAYBACK
	db 33, SHADOW_BALL
	db 39, DREAM_EATER
	db 44, DARK_PULSE
	db 50, DESTINY_BOND
	db 55, HEX
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 1, HARDEN
	db 4, CURSE
	db 7, ROCK_THROW
	db 10, WRAP
	db 15, RAGE
	db 20, ROCK_BLAST
	db 25, DRAGONBREATH
	db 28,BODY_SLAM
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 36, SANDSTORM
	db 40, IRON_TAIL
	db 43, DIG
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 5, DISABLE
	db 9, CONFUSION
	db 13, HEADBUTT
	db 17, POISON_GAS
	db 21, MEDITATE
	db 25, PSYBEAM
	db 33, CALM_MIND
	db 41, ZEN_HEADBUTT
	db 45, SWAGGER
	db 49, PSYCHIC_M
	db 53, NASTY_PLOT
	db 57, PSYCHO_CUT
	db 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 1, DISABLE
	db 1, CONFUSION
	db 5, DISABLE
	db 9, CONFUSION
	db 13, HEADBUTT
	db 17, POISON_GAS
	db 21, MEDITATE
	db 25, PSYBEAM
	db 33, CALM_MIND
	db 41, ZEN_HEADBUTT
	db 45, SWAGGER
	db 49, PSYCHIC_M
	db 53, NASTY_PLOT
	db 57, PSYCHO_CUT
	db 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, VICEGRIP
	db 9, LEER
	db 11, HARDEN
	db 15, BUBBLEBEAM
	db 19, MUD_SHOT
	db 21, METAL_CLAW
	db 25, STOMP
	db 29, PROTECT
	db 35, BODY_SLAM
	db 41, CRABHAMMER
	db 45, FLAIL
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 1, VICEGRIP
	db 5, VICEGRIP
	db 9, LEER
	db 11, HARDEN
	db 15, BUBBLEBEAM
	db 19, MUD_SHOT
	db 21, METAL_CLAW
	db 25, STOMP
	db 32, PROTECT
	db 40, BODY_SLAM
	db 47, CRABHAMMER
	db 56, FLAIL
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, SONICBOOM
	db 9, SPARK
	db 11, ROLLOUT
	db 13, SCREECH
	db 16, THUNDERSHOCK
	db 20, SWIFT
	db 22, SHOCK_WAVE
	db 26, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 34, DISCHARGE
	db 41, EXPLOSION
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 1, SONICBOOM
	db 1, SELFDESTRUCT
	db 4, SONICBOOM
	db 9, SPARK
	db 11, ROLLOUT
	db 13, SCREECH
	db 16, THUNDERSHOCK
	db 20, SWIFT
	db 22, SHOCK_WAVE
	db 26, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 36, DISCHARGE
	db 47, EXPLOSION
	db 58, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, HYPNOSIS
	db 7, REFLECT
	db 11, LEECH_SEED
	db 17, MEGA_DRAIN
	db 19, STUN_SPORE
	db 21, POISONPOWDER
	db 23, SLEEP_POWDER
	db 25, CONFUSION
	db 43, SOLARBEAM
	db 47, EXTRASENSORY
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 1, STOMP
	db 31, LEAF_BLADE
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 3, TAIL_WHIP
	db 7, BONE_RUSH
	db 11, HEADBUTT
	db 13, LEER
	db 17, FOCUS_ENERGY
	db 21, DIG
	db 23, RAGE
	db 27, FALSE_SWIPE
	db 31, THRASH
	db 33, SNARL
	db 37, MAGNITUDE
	db 43, DOUBLE_EDGE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, BONE_RUSH
	db 1, HEADBUTT
	db 3, TAIL_WHIP
	db 7, BONE_RUSH
	db 11, HEADBUTT
	db 13, LEER
	db 17, FOCUS_ENERGY
	db 21, DIG
	db 23, RAGE
	db 27, FALSE_SWIPE
	db 33, THRASH
	db 37, SNARL
	db 43, MAGNITUDE
	db 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 5, MEDITATE
	db 9, LOW_KICK
	db 13, ROCK_SMASH
	db 17, MEGA_KICK
	db 21, FOCUS_ENERGY
	db 23, BULK_UP
	db 25, FAINT_ATTACK
	db 29, HI_JUMP_KICK
	db 33, MIND_READER
	db 37, FORESIGHT
	db 41, ENDURE
	db 45, MEGA_KICK
	db 53, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, MACH_PUNCH
	db 6, AGILITY
	db 11, PURSUIT
	db 16, SEISMIC_TOSS
	db 21, MEGA_PUNCH
	db 26, THUNDERPUNCH
	db 26, ICE_PUNCH
	db 26, FIRE_PUNCH
	db 32, VITAL_THROW
	db 32, DYNAMICPUNCH
	db 38, REVENGE
	db 44, DETECT
	db 50, COUNTER
	db 53, DIZZY_PUNCH
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 5, SUPERSONIC
	db 9, DEFENSE_CURL
	db 13, THIEF
	db 17, WRAP
	db 21, STOMP
	db 25, DISABLE
	db 29, BODY_SLAM
	db 33, ROLLOUT
	db 43, SCREECH
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 4, SMOG
	db 7, SMOKESCREEN
	db 12, PURSUIT
	db 16, ACID
	db 21, ROLLOUT
	db 26, SLUDGE
	db 29, MIST
	db 34, SLUDGE_BOMB
	db 37, EXPLOSION
	db 40, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 1, SMOG
	db 1, SELFDESTRUCT
	db 4, SMOG
	db 7, SMOKESCREEN
	db 12, PURSUIT
	db 16, ACID
	db 21, ROLLOUT
	db 26, SLUDGE
	db 29, MIST
	db 34, SLUDGE_BOMB
	db 40, EXPLOSION
	db 46, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 8, STOMP
	db 12, FURY_ATTACK
	db 19, SCARY_FACE
	db 23, ROCK_BLAST
	db 30, MAGNITUDE
	db 34, BODY_SLAM
	db 41, TAKE_DOWN
	db 45, ROCK_SLIDE
	db 52, EARTHQUAKE
	db 56, MEGAHORN
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 1, STOMP
	db 1, FURY_ATTACK
	db 8, STOMP
	db 12, FURY_ATTACK
	db 19, SCARY_FACE
	db 23, ROCK_BLAST
	db 30, MAGNITUDE
	db 34, BODY_SLAM
	db 41, TAKE_DOWN
	db 47, ROCK_SLIDE
	db 56, EARTHQUAKE
	db 62, MEGAHORN
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, REST
	db 12, DOUBLESLAP
	db 16, RECOVER
	db 20, BODY_SLAM
	db 23, MINIMIZE
	db 27, TAKE_DOWN
	db 31, SING
	db 34, FLAIL
	db 38, DEFENSE_CURL
	db 42, ROLLOUT
	db 46, LIGHT_SCREEN
	db 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 4, SLEEP_POWDER
	db 7, VINE_WHIP
	db 10, ABSORB
	db 14, POISONPOWDER
	db 17, WRAP
	db 20, GROWTH
	db 23, MEGA_DRAIN
	db 27, THIEF
	db 30, STUN_SPORE
	db 36, GIGA_DRAIN
	db 38, ANCIENTPOWER
	db 41, BODY_SLAM
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, MACH_PUNCH
	db 7, BITE
	db 10, TAIL_WHIP
	db 13, FAINT_ATTACK
	db 19, DOUBLE_KICK
	db 22, RAGE
	db 25, MEGA_PUNCH
	db 31, BODY_SLAM
	db 34, DIZZY_PUNCH
	db 37, CRUNCH
	db 43, ENDURE
	db 46, OUTRAGE
	db 49, NIGHT_SLASH
	db 50, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 4, SMOKESCREEN
	db 8, LEER
	db 11, BUBBLE
	db 14, FOCUS_ENERGY
	db 18, BUBBLEBEAM
	db 23, AGILITY
	db 26, TWISTER
	db 30, WATER_PULSE
	db 35, HYDRO_PUMP
	db 38, DRAGON_DANCE
	db 42, DRAGON_PULSE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_ITEM, DRAGON_FANG, KINGDRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 4, SMOKESCREEN
	db 8, LEER
	db 11, BUBBLE
	db 14, FOCUS_ENERGY
	db 18, BUBBLEBEAM
	db 23, AGILITY
	db 26, TWISTER
	db 30, WATER_PULSE
	db 40, HYDRO_PUMP
	db 48, DRAGON_DANCE
	db 57, DRAGON_PULSE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 5, SUPERSONIC
	db 8, HORN_ATTACK
	db 13, FLAIL
	db 16, WATER_PULSE
	db 21, AQUA_JET
	db 24, FURY_ATTACK
	db 29, AGILITY
	db 32, WATERFALL
	db 37, RAIN_DANCE
	db 45, MEGAHORN
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 5, SUPERSONIC
	db 8, HORN_ATTACK
	db 13, FLAIL
	db 16, WATER_PULSE
	db 21, AQUA_JET
	db 24, FURY_ATTACK
	db 29, AGILITY
	db 32, WATERFALL
	db 40, RAIN_DANCE
	db 54, MEGAHORN
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, WATER_GUN
	db 7, RAPID_SPIN
	db 10, RECOVER
	db 13, CONFUSION
	db 16, SWIFT
	db 18, BUBBLEBEAM
	db 22, WATER_PULSE
	db 26, FLASH_CANNON
	db 31, MINIMIZE
	db 35, REFLECT
	db 37, PSYBEAM
	db 40, CONFUSE_RAY
	db 42, PSYCHIC_M
	db 46, LIGHT_SCREEN
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 37, CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, REFLECT
	db 1, CONFUSION
	db 6, CONFUSION
	db 8, MEDITATE
	db 11, DOUBLESLAP
	db 15, MIMIC
	db 15, PSYCHO_CUT
	db 18, ENCORE
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 25, PSYBEAM
	db 29, SUBSTITUTE
	db 34, CALM_MIND
	db 39, PSYCHIC_M
	db 46, BATON_PASS
	db 50, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 23, FAINT_ATTACK
	db 25, FURY_CUTTER
	db 29, SLASH
	db 33, CROSS_CHOP
	db 37, DOUBLE_TEAM
	db 41, NIGHT_SLASH
	db 45, AIR_SLASH
	db 50, SWORDS_DANCE
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 1, LOVELY_KISS
	db 1, POWDER_SNOW
	db 5, LICK
	db 8, LOVELY_KISS
	db 11, POWDER_SNOW
	db 15, DOUBLESLAP
	db 18, ICE_PUNCH
	db 21, PSYBEAM
	db 25, MEAN_LOOK
	db 28, REFLECT
	db 33, DRAIN_KISS
	db 39, AVALANCHE
	db 44, BODY_SLAM
	db 55, PERISH_SONG
	db 60, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERPUNCH
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, SHOCK_WAVE
	db 19, THUNDER_WAVE
	db 22, SCREECH
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 36, DISCHARGE
	db 49, THUNDERBOLT
	db 55, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 1, FIRE_PUNCH
	db 5, EMBER
	db 7, LEER
	db 8, SMOKESCREEN
	db 12, FAINT_ATTACK
	db 15, FIRE_SPIN
	db 19, SMOG
	db 22, FLAME_WHEEL	
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 36, FLAMETHROWER
	db 42, SUNNY_DAY
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 1, FOCUS_ENERGY
	db 4, WRAP
	db 8, SEISMIC_TOSS
	db 11, HARDEN
	db 15, REVENGE
	db 18, MACH_PUNCH
	db 22, VITAL_THROW
	db 26, SUBMISSION
	db 29, MEGAHORN
	db 33, CROSS_CHOP
	db 36, THRASH
	db 40, SWORDS_DANCE
	db 43, SUBMISSION
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, TAIL_WHIP
	db 5, RAGE
	db 8, HORN_ATTACK
	db 11, SCARY_FACE
	db 15, PURSUIT
	db 19, REST
	db 24, PAYBACK
	db 29, BULK_UP
	db 35, ZEN_HEADBUTT
	db 41, TAKE_DOWN
	db 48, SWAGGER
	db 50, THRASH
	db 63, GIGA_IMPACT
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 20, BITE
	db 23, DRAGON_RAGE
	db 26, LEER
	db 29, TWISTER
	db 32, AVALANCHE
	db 35, AQUA_TAIL
	db 38, RAIN_DANCE
	db 41, CRUNCH
	db 44, HYDRO_PUMP
	db 47, DRAGON_DANCE
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 4, MIST
	db 7, CONFUSE_RAY
	db 10, ICY_WIND
	db 14, WATER_PULSE
	db 18, BODY_SLAM
	db 22, RAIN_DANCE
	db 27, PERISH_SONG
	db 32, ICE_BEAM
	db 37, BUBBLEBEAM
	db 43, SAFEGUARD
	db 47, HYDRO_PUMP
	db 50, BLIZZARD
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, GROWL
	db 5, SAND_ATTACK
	db 10, SWIFT
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, DOUBLE_TEAM
	db 23, BODY_SLAM
	db 25, TAKE_DOWN
	db 29, CHARM
	db 33, BATON_PASS
	db 37, DOUBLE_EDGE
	db 50, GIGA_IMPACT
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 9, WATER_GUN
	db 13, QUICK_ATTACK
	db 17, WATER_PULSE
	db 20, AURORA_BEAM
	db 25, AQUA_JET
	db 29, ACID_ARMOR
	db 33, MIST
	db 37, SURF
	db 43, RAIN_DANCE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 9, THUNDERSHOCK
	db 13, QUICK_ATTACK
	db 17, DOUBLE_KICK
	db 20, SHOCK_WAVE
	db 25, PIN_MISSILE
	db 29, AGILITY
	db 33, THUNDER_WAVE
	db 37, DISCHARGE
	db 41, THUNDERBOLT
	db 50, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 9, EMBER
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, FLAME_WHEEL
	db 25, FIRE_SPIN
	db 29, SCARY_FACE
	db 33, SMOG
	db 34, WILL_O_WISP
	db 37, FLAMETHROWER
	db 41, SUNNY_DAY
	db 50, FIRE_BLAST
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 1, CALM_MIND
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, BODY_SLAM
	db 29, BUG_BUZZ
	db 34, SCREECH
	db 40, DISCHARGE
	db 45, TRI_ATTACK
	db 50, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, WITHDRAW
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, LEER
	db 25, MUD_SHOT
	db 28, WATER_PULSE
	db 34, PROTECT
	db 37, ANCIENTPOWER
	db 43, ROCK_BLAST
	db 50, ROCK_SLIDE
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, WITHDRAW
	db 1, BITE
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, LEER
	db 25, MUD_SHOT
	db 28, WATER_PULSE
	db 34, PROTECT
	db 37, ANCIENTPOWER
	db 48, ROCK_BLAST
	db 56, ROCK_SLIDE
	db 67, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 6, ABSORB
	db 11, LEER
	db 16, MUD_SHOT
	db 21, SAND_ATTACK
	db 26, ENDURE
	db 31, AQUA_JET
	db 36, MEGA_DRAIN
	db 41, NASTY_PLOT
	db 46, ANCIENTPOWER
	db 50, GIGA_IMPACT
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 1, ABSORB
	db 6, ABSORB
	db 11, LEER
	db 16, MUD_SHOT
	db 21, SAND_ATTACK
	db 26, ENDURE
	db 31, AQUA_JET
	db 36, MEGA_DRAIN
	db 45, NASTY_PLOT
	db 54, ANCIENTPOWER
	db 63, GIGA_IMPACT
	db 72, NIGHT_SLASH
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, BITE
	db 1, SUPERSONIC
	db 1, IRON_TAIL
	db 5, BITE
	db 9, ROAR
	db 13, WING_ATTACK
	db 17, AGILITY
	db 22, SUPERSONIC
	db 25, ANCIENTPOWER
	db 33, CRUNCH
	db 36, SCARY_FACE
	db 41, TAKE_DOWN
	db 49, IRON_TAIL
	db 57, IRON_HEAD
	db 65, HYPER_BEAM
	db 73, ROCK_SLIDE
	db 81, GIGA_IMPACT
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, LICK
	db 17, HEADBUTT
	db 20, HYPNOSIS
	db 25, BODY_SLAM
	db 28, REST
	db 28, SNORE
	db 33, BITE
	db 36, ROLLOUT
	db 41, DOUBLE_EDGE
	db 44, BELLY_DRUM
	db 49, CRUNCH
	db 57, GIGA_IMPACT
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, POWDER_SNOW
	db 1, WING_ATTACK
	db 8, MIST
	db 15, ICY_WIND
	db 22, MIND_READER
	db 29, ANCIENTPOWER
	db 36, AGILITY
	db 43, ICE_BEAM
	db 50, REFLECT
	db 57, HAIL
	db 64, AERIAL_ACE
	db 71, BLIZZARD
	db 78, RECOVER
	db 85, AEROBLAST
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRILL_PECK
	db 1, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 15, DETECT
	db 22, AERIAL_ACE
	db 29, ANCIENTPOWER
	db 36, SHOCK_WAVE
	db 43, AGILITY
	db 50, DISCHARGE
	db 57, RAIN_DANCE
	db 64, LIGHT_SCREEN
	db 71, DRILL_PECK
	db 78, THUNDER
	db 85, RECOVER
	db 92, ZAP_CANNON
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 8, FIRE_SPIN
	db 15, AGILITY
	db 22, ENDURE
	db 29, ANCIENTPOWER
	db 36, FLAMETHROWER
	db 43, SAFEGUARD
	db 50, AIR_SLASH
	db 57, SUNNY_DAY
	db 64, FIRE_BLAST
	db 71, SOLARBEAM
	db 78, RECOVER
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM
	db 25, AGILITY
	db 31, DRAGONBREATH
	db 35, AQUA_TAIL
	db 41, DRAGON_PULSE
	db 45, SAFEGUARD
	db 51, DRAGON_DANCE
	db 55, OUTRAGE
	db 61, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM
	db 25, AGILITY
	db 33, DRAGONBREATH
	db 39, AQUA_TAIL
	db 47, DRAGON_PULSE
	db 53, SAFEGUARD
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, BODY_SLAM
	db 25, AGILITY
	db 33, DRAGONBREATH
	db 39, AQUA_TAIL
	db 47, DRAGON_PULSE
	db 53, SAFEGUARD
	db 55, WING_ATTACK
	db 55, DRAGON_CLAW
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, HYPER_BEAM
	db 81, AEROBLAST
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 1, SAFEGUARD
	db 8, SWIFT
	db 15, FUTURE_SIGHT
	db 22, CALM_MIND
	db 29, MIND_READER
	db 36, PSYCHO_CUT
	db 43, PSYBEAM
	db 50, RECOVER
	db 57, PSYCHIC_M
	db 64, REFLECT
	db 70, FOCUS_BLAST
	db 79, AMNESIA
	db 86, MIST
	db 93, EXTRASENSORY
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, REFLECT
	db 1, TRANSFORM
	db 10, MEGA_PUNCH
	db 20, METRONOME
	db 30, PSYCHIC_M
	db 40, REFLECT
	db 50, ANCIENTPOWER
	db 60, AMNESIA
	db 70, CALM_MIND
	db 80, BATON_PASS
	db 90, NASTY_PLOT
	db 99, FOCUS_BLAST
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 17, REFLECT
	db 20, MEGA_DRAIN
	db 23, LEECH_SEED
	db 28, SWEET_SCENT
	db 31, LIGHT_SCREEN
	db 34, BODY_SLAM
	db 36, LEAF_BLADE
	db 39, SAFEGUARD
	db 42, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 18, REFLECT
	db 22, MEGA_DRAIN
	db 26, LEECH_SEED
	db 32, SWEET_SCENT
	db 36, LIGHT_SCREEN
	db 40, BODY_SLAM
	db 43, LEAF_BLADE
	db 46, SAFEGUARD
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, SYNTHESIS
	db 18, REFLECT
	db 22, MEGA_DRAIN
	db 26, LEECH_SEED
	db 32, SWEET_SCENT
	db 34, DRAIN_KISS
	db 40, LIGHT_SCREEN
	db 46, BODY_SLAM
	db 50, LEAF_BLADE
	db 52, MOONBLAST
	db 56, SAFEGUARD
	db 60, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, THUNDERSHOCK
	db 1, SUNNY_DAY
	db 1, MUD_SHOT
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 19, FLAME_WHEEL
	db 22, DEFENSE_CURL
	db 28, FIRE_PUNCH
	db 31, SWIFT
	db 37, FLAMETHROWER
	db 40, ROLLOUT
	db 46, DOUBLE_EDGE
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 31, SWIFT
	db 35, FIRE_PUNCH
	db 42, FLAMETHROWER
	db 46, ROLLOUT
	db 53, DOUBLE_EDGE
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 1, EMBER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 31, SWIFT
	db 35, FIRE_PUNCH
	db 43, FLAMETHROWER
	db 48, ROLLOUT
	db 56, DOUBLE_EDGE
	db 61, FIRE_BLAST
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 20, ICE_PUNCH
	db 22, FLAIL
	db 27, CRUNCH
	db 29, BODY_SLAM
	db 34, SLASH
	db 36, SCREECH
	db 41, THRASH
	db 43, AQUA_TAIL
	db 48, VITAL_THROW
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_PUNCH
	db 24, FLAIL
	db 30, CRUNCH
	db 33, BODY_SLAM
	db 39, SLASH
	db 42, SCREECH
	db 48, THRASH
	db 51, AQUA_TAIL
	db 57, VITAL_THROW
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 1, WATER_GUN
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_PUNCH
	db 24, FLAIL
	db 32, CRUNCH
	db 37, BODY_SLAM
	db 45, SLASH
	db 50, SCREECH
	db 58, THRASH
	db 63, AQUA_TAIL
	db 71, VITAL_THROW
	db 76, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, EMBER
	;db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_SWIPES
	db 16, CHARM
	db 19, SWIFT
	db 25, BODY_SLAM
	db 28, REST
	db 31, FAINT_ATTACK
	db 36, AMNESIA
	db 39, BATON_PASS
	db 47, HYPER_BEAM
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_SWIPES
	db 17, CHARM
	db 21, SWIFT
	db 28, BODY_SLAM
	db 32, REST
	db 36, FAINT_ATTACK
	db 42, AMNESIA
	db 46, BATON_PASS
	db 56, HYPER_BEAM
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, HYPNOSIS
	db 9, PECK
	db 13, FORESIGHT
	db 17, REFLECT
	db 21, CONFUSION
	db 25, AIR_SLASH
	db 29, TAKE_DOWN
	db 33, PSYBEAM
	db 37, ZEN_HEADBUTT
	db 45, EXTRASENSORY
	db 53, RECOVER
	db 57, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 1, PECK
	db 5, HYPNOSIS
	db 9, PECK
	db 13, FORESIGHT
	db 17, REFLECT
	db 22, CONFUSION
	db 27, AIR_SLASH
	db 32, TAKE_DOWN
	db 37, PSYBEAM
	db 42, ZEN_HEADBUTT
	db 47, EXTRASENSORY
	db 55, RECOVER
	db 60, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, SUPERSONIC
	db 9, MACH_PUNCH
	db 14, LIGHT_SCREEN
	db 14, REFLECT
	db 14, SAFEGUARD
	db 17, MACH_PUNCH
	db 22, BATON_PASS
	db 25, AIR_SLASH
	db 30, AGILITY
	db 33, SWIFT
	db 38, DOUBLE_EDGE
	db 41, BUG_BUZZ
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 6, SUPERSONIC
	db 9, MACH_PUNCH
	db 14, LIGHT_SCREEN
	db 14, REFLECT
	db 14, SAFEGUARD
	db 17, MACH_PUNCH
	db 24, BATON_PASS
	db 29, AIR_SLASH
	db 36, AGILITY
	db 41, SWIFT
	db 48, DOUBLE_EDGE
	db 53, BUG_BUZZ
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, SCARY_FACE
	db 8, WRAP
	db 12, LEECH_LIFE
	db 15, NIGHT_SHADE
	db 19, FURY_SWIPES
	db 22, HEX
	db 26, FAINT_ATTACK
	db 29, MEAN_LOOK
	db 33, AGILITY
	db 36, PIN_MISSILE
	db 40, PSYCHIC_M
	db 43, POISON_JAB
	db 47, SLUDGE_BOMB
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, SCARY_FACE
	db 1, WRAP
	db 5, SCARY_FACE
	db 8, WRAP
	db 12, LEECH_LIFE
	db 15, NIGHT_SHADE
	db 19, HEX
	db 22, FURY_SWIPES
	db 28, FAINT_ATTACK
	db 32, MEAN_LOOK
	db 37, AGILITY
	db 41, PIN_MISSILE
	db 46, PSYCHIC_M
	db 50, POISON_JAB
	db 55, SLUDGE_BOMB
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 11, BITE
	db 13, WING_ATTACK
	db 17, CONFUSE_RAY
	db 19, AIR_SLASH
	db 24, SWIFT
	db 27, POISON_JAB
	db 32, MEAN_LOOK
	db 35, AERIAL_ACE
	db 43, SLUDGE_BOMB
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SUPERSONIC
	db 5, THUNDER_WAVE
	db 9, THUNDERSHOCK
	db 12, WATER_GUN
	db 17, CONFUSE_RAY
	db 20, BUBBLEBEAM
	db 23, SPARK
	db 28, BUG_BUZZ
	db 31, FLAIL
	db 34, DISCHARGE
	db 39, TAKE_DOWN
	db 41, AQUA_JET
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 1, SUPERSONIC
	db 5, THUNDER_WAVE
	db 9, THUNDERSHOCK
	db 12, WATER_GUN
	db 17, CONFUSE_RAY
	db 20, BUBBLEBEAM
	db 23, SPARK
	db 29, BUG_BUZZ
	db 33, FLAIL
	db 37, DISCHARGE
	db 43, TAKE_DOWN
	db 47, AQUA_JET
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 5, TAIL_WHIP
	db 10, SWEET_KISS
	db 13, NASTY_PLOT
	db 18, THUNDER_WAVE
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 7, SING
	db 10, SWEET_KISS
	db 16, RAZOR_LEAF
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 3, DEFENSE_CURL
	db 5, POUND
	db 9, SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, HYPNOSIS
	db 17, ENCORE
	db 25, RECOVER
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, HYPNOSIS
	db 17, ENCORE
	db 25, RECOVER
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 12, CONFUSION
	db 17, CONFUSE_RAY
	db 20, HEX
	db 23, PSYBEAM
	db 28, RECOVER
	db 33, PSYCHIC_M
	db 36, MIND_READER
	db 39, SHADOW_BALL
	db 44, FUTURE_SIGHT
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 1, NIGHT_SHADE
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 12, CONFUSION
	db 17, CONFUSE_RAY
	db 20, HEX
	db 23, PSYBEAM
	db 27, AIR_SLASH
	db 30, RECOVER
	db 37, PSYCHIC_M
	db 42, MIND_READER
	db 47, SHADOW_BALL
	db 54, FUTURE_SIGHT
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, COTTON_SPORE
	db 15, SPARK
	db 16, TAKE_DOWN
	db 22, THUNDERBOLT
	db 25, CONFUSE_RAY
	db 29, ANCIENTPOWER
	db 32, DISCHARGE
	db 36, CHARM
	db 39, BUG_BUZZ
	db 43, LIGHT_SCREEN
	db 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, COTTON_SPORE
	db 16, SPARK
	db 20, TAKE_DOWN
	db 25, THUNDERBOLT
	db 29, CONFUSE_RAY
	db 34, ANCIENTPOWER
	db 38, DISCHARGE
	db 43, CHARM
	db 47, BUG_BUZZ
	db 52, LIGHT_SCREEN
	db 56, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, COTTON_SPORE
	db 16, SPARK
	db 20, TAKE_DOWN
	db 25, THUNDERBOLT
	db 29, CONFUSE_RAY
	db 30, THUNDERPUNCH
	db 35, ANCIENTPOWER
	db 40, DISCHARGE
	db 46, CHARM
	db 51, BUG_BUZZ
	db 57, LIGHT_SCREEN
	db 62, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 23, RAZOR_LEAF
	db 45, SUNNY_DAY
	db 50, PETAL_DANCE
	db 53, SOLARBEAM
	db 55, LEAF_BLADE
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, TAIL_WHIP
	db 7, BUBBLE
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLEBEAM
	db 16, CHARM
	db 20, AQUA_TAIL
	db 23, PLAY_ROUGH
	db 28, DOUBLE_EDGE
	db 31, RAIN_DANCE
	db 37, VITAL_THROW
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 2, TAIL_WHIP
	db 7, BUBBLE
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLEBEAM
	db 16, CHARM
	db 21, AQUA_TAIL
	db 25, DOUBLE_EDGE
	db 33, RAIN_DANCE
	db 42, VITAL_THROW
	db 46, HYDRO_PUMP
	db 50, PLAY_ROUGH
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, MIMIC
	db 1, FLAIL
	db 1, LOW_KICK
	db 5, FLAIL
	db 8, LOW_KICK
	db 12, ROCK_THROW
	db 15, MIMIC
	db 15, BODY_SLAM
	db 19, FAINT_ATTACK
	db 22, MAGNITUDE
	db 26, MEAN_LOOK
	db 29, ROCK_SLIDE
	db 33, COUNTER
	db 36, THIEF
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 35, PERISH_SONG
	db 51, SWAGGER
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 4, SYNTHESIS
	db 6, TAIL_WHIP
	db 8, TACKLE
	db 10, DRAIN_KISS
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 19, ABSORB
	db 22, LEECH_SEED
	db 25, MEGA_DRAIN
	db 28, GUST
	db 34, COTTON_SPORE
	db 37, BUG_BITE
	db 40, GIGA_DRAIN 
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 4, SYNTHESIS
	db 6, TAIL_WHIP
	db 8, TACKLE
	db 10, DRAIN_KISS
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 20, ABSORB
	db 24, LEECH_SEED
	db 28, MEGA_DRAIN
	db 32, GUST
	db 38, COTTON_SPORE
	db 42, BUG_BITE
	db 48, GIGA_DRAIN 
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 4, SYNTHESIS
	db 6, TAIL_WHIP
	db 8, TACKLE
	db 10, DRAIN_KISS
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 20, ABSORB
	db 24, LEECH_SEED
	db 29, MEGA_DRAIN
	db 34, GUST
	db 44, COTTON_SPORE
	db 49, BUG_BITE
	db 54, GIGA_DRAIN 
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, SAND_ATTACK
	db 8, LICK
	db 11, BATON_PASS
	db 16, FURY_SWIPES
	db 22, SWIFT
	db 25, SCREECH
	db 29, AGILITY
	db 32, DOUBLE_KICK
	db 36, BODY_SLAM
	db 39, BULK_UP
	db 43, GIGA_IMPACT
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 7, ABSORB
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 19, SUNNY_DAY
	db 22, GIGA_DRAIN
	db 25, SWIFT
	db 28, SYNTHESIS
	db 31, BODY_SLAM
	db 34, SOLARBEAM
	db 37, DOUBLE_EDGE
	db 40, LEAF_BLADE
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, POUND
	db 4, GROWTH
	db 7, ABSORB
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 19, SUNNY_DAY
	db 22, GIGA_DRAIN
	db 25, SWIFT
	db 28, SYNTHESIS
	db 28, PETAL_DANCE
	db 31, BODY_SLAM
	db 34, SOLARBEAM
	db 37, DOUBLE_EDGE
	db 40, LEAF_BLADE
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONICBOOM
	db 17, TWISTER
	db 19, SUPERSONIC
	db 22, DRAGONBREATH
	db 25, DETECT
	db 27, WING_ATTACK
	db 30, PURSUIT
	db 33, ANCIENTPOWER
	db 35, DRAGON_DANCE
	db 38, HYPNOSIS
	db 40, OUTRAGE
	db 43, AIR_SLASH
	db 46, SCREECH
	db 49, BUG_BUZZ
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 5, MUD_SLAP
	db 9, MUD_SHOT
	db 15, BODY_SLAM
	db 19, WATER_PULSE
	db 23, AMNESIA
	db 29, HYPNOSIS
	db 33, EARTHQUAKE
	db 37, RAIN_DANCE
	db 43, MIST
	db 47, SURF
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 5, MUD_SLAP
	db 9, MUD_SHOT
	db 15, BODY_SLAM
	db 19, WATER_PULSE
	db 24, AMNESIA
	db 31, HYPNOSIS
	db 36, EARTHQUAKE
	db 41, RAIN_DANCE
	db 48, MIST
	db 53, SURF
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 9, CONFUSION
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, PSYBEAM
	db 25, FUTURE_SIGHT
	db 29, CALM_MIND
	db 33, RECOVER
	db 37, PSYCHIC_M
	db 41, AGILITY
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 9, PURSUIT
	db 13, QUICK_ATTACK
	db 17, CONFUSE_RAY
	db 20, FAINT_ATTACK
	db 25, PAYBACK
	db 29, SCREECH
	db 33, RECOVER
	db 37, MEAN_LOOK
	db 41, NASTY_PLOT
	db 45, DARK_PULSE
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, PURSUIT
	db 5, PURSUIT
	db 11, MIST
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, PAYBACK
	db 35, FAINT_ATTACK
	db 41, MEAN_LOOK
	db 45, NIGHT_SLASH
	db 50, AIR_SLASH
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, HYPNOSIS
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, ZEN_HEADBUTT
	db 36, NASTY_PLOT
	db 41, SWAGGER
	db 45, PSYCHIC_M
	db 49, RAIN_DANCE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CONFUSION
	db 5, SPITE
	db 10, LICK
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 23, HEX
	db 28, PSYBEAM
	db 32, NIGHT_SHADE
	db 37, PAYBACK
	db 41, SHADOW_BALL
	db 46, PERISH_SONG
	db 46, DESTINY_BOND
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, CONFUSION
	db 1, STOMP
	db 3, LICK
	db 5, FORESIGHT
	db 7, CONFUSION
	db 10, STOMP
	db 14, AGILITY
	db 19, PSYBEAM
	db 23, BATON_PASS
	db 28, PAYBACK
	db 32, DOUBLE_KICK
	db 37, PSYCHIC_M
	db 41, ZEN_HEADBUTT
	db 46, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
	db 9, BUG_BITE
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, BIDE
	db 23, BODY_SLAM
	db 28, SPIKES
	db 31, PAYBACK
	db 34, EXPLOSION
	db 39, IRON_DEFENSE
	db 42, ROLLOUT
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 1, SELFDESTRUCT
	db 1, BUG_BITE
	db 6, SELFDESTRUCT
	db 9, BUG_BITE
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, BIDE
	db 23, BODY_SLAM
	db 28, SPIKES
	db 31, IRON_HEAD
	db 32, AGILITY
	db 36, PAYBACK
	db 42, EXPLOSION
	db 46, IRON_DEFENSE
	db 50, ROLLOUT
	db 56, DOUBLE_EDGE
	db 60, ZAP_CANNON
	db 64, GIGA_IMPACT
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 4, ROLLOUT
	db 7, SPITE
	db 10, PURSUIT
	db 13, SCREECH
	db 16, HYPNOSIS
	db 19, ANCIENTPOWER
	db 22, TAKE_DOWN
	db 25, RECOVER
	db 28, GLARE
	db 31, DIG
	db 34, DOUBLE_EDGE
	db 37, BULK_UP
	db 40, ENDURE
	db 43, EARTHQUAKE
	db 46, FLAIL
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, SAND_ATTACK
	db 7, HARDEN
	db 10, PURSUIT
	db 13, QUICK_ATTACK
	db 16, FURY_CUTTER
	db 19, FAINT_ATTACK
	db 22, AERIAL_ACE
	db 27, SLASH
	db 30, BUG_BITE
	db 35, SCREECH
	db 40, VICEGRIP
	db 45, VITAL_THROW
	db 50, SWORDS_DANCE
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 1, WRAP
	db 4, CURSE
	db 7, ROCK_THROW
	db 10, WRAP
	db 13, BITE
	db 16, RAGE
	db 19, IRON_DEFENSE
	db 22, ROCK_BLAST
	db 25, DRAGONBREATH
	db 28, BODY_SLAM
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, CRUNCH
	db 43, DIG
	db 46, EARTHQUAKE
	db 49, DOUBLE_EDGE
	db 52, SANDSTORM
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 5, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 25, ROAR
	db 31, RAGE
	db 37, PLAY_ROUGH
	db 43, PAYBACK
	db 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 5, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 27, ROAR
	db 35, RAGE
	db 43, PLAY_ROUGH
	db 51, PAYBACK
	db 59, CRUNCH
	db 67, OUTRAGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPIKES
	db 1, TACKLE
	db 1, POISON_STING
	db 1, WATER_GUN
	db 9, HARDEN
	db 9, MINIMIZE
	db 13, BUBBLE
	db 17, ROLLOUT
	db 21, POISON_GAS
	db 25, BODY_SLAM
	db 29, REVENGE
	db 33, WATER_PULSE
	db 37, PIN_MISSILE
	db 41, TAKE_DOWN
	db 45, AQUA_TAIL
	db 49, POISON_JAB
	db 53, DESTINY_BOND
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, MACH_PUNCH
	db 1, FAINT_ATTACK
	db 5, FOCUS_ENERGY
	db 12, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, METAL_CLAW
	db 25, FURY_CUTTER
	db 29, SLASH
	db 31, AIR_SLASH
	db 37, IRON_DEFENSE
	db 41, BUG_BITE
	db 45, NIGHT_SLASH
	db 49, MACH_PUNCH
	db 50, IRON_HEAD
	db 57, SWORDS_DANCE
	db 60, DOUBLE_TEAM
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, WITHDRAW
	db 5, ENCORE
	db 9, WRAP
	db 12, BUG_BITE
	db 16, SAFEGUARD
	db 20, REST
	db 23, ROCK_THROW
	db 27, BIDE
	db 31, BODY_SLAM
	db 38, ROCK_SLIDE
	db 42, ROCK_BLAST
	db 45, IRON_DEFENSE
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, HORN_ATTACK
	db 6, HORN_ATTACK
	db 7, FURY_ATTACK
	db 10, AERIAL_ACE
	db 16, ENDURE
	db 19, COUNTER
	db 25, MACH_PUNCH
	db 28, TAKE_DOWN
	db 31, PIN_MISSILE
	db 34, CROSS_CHOP
	db 37, FAINT_ATTACK
	db 43, REVERSAL
	db 46, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, QUICK_ATTACK
	db 14, ICY_WIND
	db 16, FURY_SWIPES
	db 20, AGILITY
	db 22, METAL_CLAW
	db 25, SWORDS_DANCE
	db 28, FAINT_ATTACK
	db 32, SCREECH
	db 35, SLASH
	db 40, NIGHT_SLASH
	db 44, ICE_PUNCH
	db 47, AVALANCHE
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 5, LICK
	db 8, FURY_SWIPES
	db 15, FAINT_ATTACK
	db 22, SWEET_SCENT
	db 25, PLAY_ROUGH
	db 29, SLASH
	db 36, CHARM
	db 43, REST
	db 43, SNORE
	db 50, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FURY_SWIPES
	db 5, LICK
	db 8, FURY_SWIPES
	db 15, FAINT_ATTACK
	db 22, SWEET_SCENT
	db 25, PLAY_ROUGH
	db 29, SLASH
	db 38, SCARY_FACE
	db 47, REST
	db 47, SNORE
	db 58, THRASH
	db 67, GIGA_IMPACT
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 5, EMBER
	db 8, ROCK_THROW
	db 13, HARDEN
	db 15, FLAME_WHEEL
	db 20, RECOVER
	db 22, ANCIENTPOWER
	db 27, WILL_O_WISP
	db 29, ROCK_SLIDE
	db 34, FLAMETHROWER
	db 36, AMNESIA
	db 41, BODY_SLAM
	db 48, FIRE_BLAST
	db 50, EARTH_POWER
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, EMBER
	db 1, ROCK_THROW
	db 5, EMBER
	db 8, ROCK_THROW
	db 13, HARDEN
	db 15, FLAME_WHEEL
	db 20, RECOVER
	db 22, ANCIENTPOWER
	db 27, WILL_O_WISP
	db 29, ROCK_SLIDE
	db 34, FLAMETHROWER
	db 36, AMNESIA
	db 38, BULK_UP
	db 43, BODY_SLAM
	db 54, FIRE_BLAST
	db 58, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP
	db 8, POWDER_SNOW
	db 12, ENDURE
	db 16, MUD_SHOT
	db 21, ICY_WIND
	db 24, AVALANCHE
	db 28, TAKE_DOWN
	db 35, MIST
	db 37, EARTHQUAKE
	db 40, FLAIL
	db 44, BLIZZARD
	db 48, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, POWDER_SNOW
	db 1, ENDURE
	db 5, MUD_SLAP
	db 8, POWDER_SNOW
	db 12, ENDURE
	db 16, MUD_SHOT
	db 21, ICY_WIND
	db 24, AVALANCHE
	db 28, TAKE_DOWN
	db 33, FURY_ATTACK
	db 37, MIST
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, AMNESIA
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, BUBBLE
	db 8, RECOVER
	db 10, BUBBLEBEAM
	db 13, IRON_DEFENSE
	db 17, ANCIENTPOWER
	db 20, SPIKES
	db 23, AQUA_JET
	db 27, WATER_PULSE
	db 30, ROCK_BLAST
	db 35, ENDURE
	db 38, RAIN_DANCE
	db 41, ROCK_SLIDE
	db 45, MIRROR_COAT
	db 47, EARTH_POWER
	db 50, FLAIL
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 6, MEAN_LOOK
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLEBEAM
	db 22, FOCUS_ENERGY
	db 26, WATER_PULSE
	db 30, BUG_BITE
	db 34, ICE_BEAM
	db 38, HYDRO_PUMP
	db 42, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 6, MIND_READER
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLEBEAM
	db 22, FOCUS_ENERGY
	db 25, WATER_PULSE
	db 28, WRAP
	db 34, BUG_BUZZ
	db 40, ICE_BEAM
	db 46, HYDRO_PUMP
	db 52, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, BUBBLE
	db 3, SUPERSONIC
	db 7, BUBBLEBEAM
	db 11, CONFUSE_RAY
	db 14, WING_ATTACK
	db 16, HEADBUTT
	db 19, WATER_PULSE
	db 23, PROTECT
	db 27, TAKE_DOWN
	db 32, AGILITY
	db 36, AIR_SLASH
	db 39, AQUA_JET
	db 46, AERIAL_ACE
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 6, SAND_ATTACK
	db 9, METAL_CLAW
	db 9, SWIFT
	db 12, WING_ATTACK
	db 17, FURY_ATTACK
	db 20, FAINT_ATTACK
	db 23, SWIFT
	db 28, SPIKES
	db 31, AGILITY
	db 34, STEEL_WING
	db 39, SLASH
	db 40, SCREECH
	db 42, AIR_SLASH
	db 45, IRON_DEFENSE
	db 50, NIGHT_SLASH
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, MEDITATE
	db 8, SMOG
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT
	db 25, SNARL
	db 28, FLAME_WHEEL
	db 32, FAINT_ATTACK
	db 37, FLAMETHROWER
	db 40, CRUNCH
	db 44, DARK_PULSE
	db 49, NASTY_PLOT
	db 52, FIRE_BLAST
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, MEDITATE
	db 8, SMOG
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT
	db 26, SNARL
	db 30, FLAME_WHEEL
	db 35, FAINT_ATTACK
	db 41, FLAMETHROWER
	db 45, CRUNCH
	db 50, DARK_PULSE
	db 56, NASTY_PLOT
	db 60, FIRE_BLAST
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 4, SMOKESCREEN
	db 8, LEER
	db 11, BUBBLE
	db 14, FOCUS_ENERGY
	db 18, BUBBLEBEAM
	db 23, AGILITY
	db 26, TWISTER
	db 30, WATER_PULSE
	db 40, HYDRO_PUMP
	db 48, DRAGON_DANCE
	db 57, DRAGON_PULSE
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 6, FLAIL
	db 10, ROLLOUT
	db 15, MAGNITUDE
	db 19, FAINT_ATTACK
	db 24, BODY_SLAM
	db 28, CHARM
	db 33, TAKE_DOWN
	db 37, DOUBLE_EDGE
	db 42, EARTHQUAKE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 6, FLAIL
	db 10, ROLLOUT
	db 15, MAGNITUDE
	db 19, PURSUIT
	db 24, BODY_SLAM
	db 25, FURY_ATTACK
	db 31, PAYBACK
	db 39, SCARY_FACE
	db 46, EARTHQUAKE
	db 54, GIGA_IMPACT
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, BODY_SLAM
	db 29, BUG_BUZZ
	db 34, SCREECH
	db 40, DISCHARGE
	db 45, TRI_ATTACK
	db 50, ZAP_CANNON
	db 56, HYPER_BEAM
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 7, LICK
	db 10, HYPNOSIS
	db 13, STOMP
	db 16, SAND_ATTACK
	db 21, TAKE_DOWN
	db 23, CONFUSE_RAY
	db 27, CALM_MIND
	db 33, ZEN_HEADBUTT
	db 38, DOUBLE_KICK
	db 43, PSYCHIC_M
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 6, FOCUS_ENERGY
	db 10, PURSUIT
	db 15, QUICK_ATTACK
	db 19, DOUBLE_KICK
	db 24, RAPID_SPIN
	db 28, COUNTER
	db 33, FAINT_ATTACK
	db 35, VITAL_THROW
	db 37, AGILITY
	db 42, IRON_HEAD
	db 46, DETECT
	db 50, SUBMISSION
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POUND
	db 5, LICK
	db 8, SWEET_KISS
	db 11, POWDER_SNOW
	db 15, CONFUSION
	db 18, SING
	db 21, ZEN_HEADBUTT
	db 25, MEAN_LOOK
	db 28, NASTY_PLOT
	db 33, AVALANCHE
	db 38, PSYCHIC_M
	db 45, PERISH_SONG
	db 48, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 9, THUNDERPUNCH
	db 12, SWIFT
	db 15, SHOCK_WAVE
	db 19, THUNDER_WAVE
	db 22, SPARK
	db 26, LIGHT_SCREEN
	db 33, DISCHARGE
	db 36, SCREECH
	db 40, THUNDERBOLT
	db 43, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FAINT_ATTACK
	db 15, FIRE_SPIN
	db 19, FIRE_PUNCH
	db 22, SUNNY_DAY
	db 26, CONFUSE_RAY
	db 29, FLAMETHROWER
	db 33, FLAME_WHEEL
	db 40, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 8, STOMP
	db 11, RECOVER
	db 15, BIDE
	db 19, ROLLOUT
	db 24, BODY_SLAM
	db 29, ZEN_HEADBUTT
	db 35, IRON_HEAD
	db 41, DOUBLE_KICK
	db 48, HEAL_BELL
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 1, DOUBLE_EDGE
	db 5, TAIL_WHIP
	db 9, RECOVER
	db 12, DOUBLESLAP
	db 16, MINIMIZE
	db 20, SING
	db 27, BODY_SLAM
	db 31, FLAIL
	db 34, LIGHT_SCREEN
	db 38, REFLECT
	db 42, DOUBLE_EDGE
	db 46, GIGA_DRAIN
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, THUNDERSHOCK
	db 15, ROAR
	db 22, QUICK_ATTACK
	db 29, SPARK
	db 36, REFLECT
	db 43, CRUNCH
	db 50, THUNDERBOLT
	db 57, DISCHARGE
	db 64, EXTRASENSORY
	db 71, RAIN_DANCE
	db 78, CALM_MIND
	db 85, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 1, SACRED_FIRE
	db 8, EMBER
	db 15, ROAR
	db 22, FIRE_SPIN
	db 29, STOMP
	db 36, FLAMETHROWER
	db 43, SWAGGER
	db 50, FLAME_WHEEL
	db 57, FLAMETHROWER
	db 64, EXTRASENSORY
	db 71, FIRE_BLAST
	db 74, SACRED_FIRE
	db 78, CALM_MIND
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, BUBBLEBEAM
	db 15, RAIN_DANCE
	db 22, GUST
	db 29, AURORA_BEAM
	db 36, MIST
	db 43, MIRROR_COAT
	db 50, AVALANCHE
	db 57, AGILITY
	db 64, EXTRASENSORY
	db 71, HYDRO_PUMP
	db 78, CALM_MIND
	db 85, BLIZZARD
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, BODY_SLAM
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 32, DARK_PULSE
	db 37, PAYBACK
	db 41, CRUNCH
	db 46, EARTHQUAKE
	db 50, ROCK_BLAST
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, BODY_SLAM
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 34, DARK_PULSE
	db 41, PAYBACK
	db 47, CRUNCH
	db 54, EARTHQUAKE
	db 60, ROCK_BLAST
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, BODY_SLAM
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 34, DARK_PULSE
	db 41, PAYBACK
	db 47, CRUNCH
	db 54, EARTHQUAKE
	db 63, ROCK_BLAST
	db 73, HYPER_BEAM
	db 82, GIGA_IMPACT
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, AEROBLAST
	db 9, GUST
	db 15, DRAGONBREATH
	db 23, EXTRASENSORY
	db 29, RAIN_DANCE
	db 37, HYDRO_PUMP
	db 43, AEROBLAST
	db 50, PAYBACK
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, BODY_SLAM
	db 93, CALM_MIND
	db 99, HYPER_BEAM
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	db 9, GUST
	db 15, AERIAL_ACE
	db 23, EXTRASENSORY
	db 29, SUNNY_DAY
	db 37, FIRE_BLAST
	db 43, SACRED_FIRE
	db 50, FAINT_ATTACK
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, SWIFT
	db 93, CALM_MIND
	db 99, HYPER_BEAM
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 19, RAZOR_LEAF
	db 28, ANCIENTPOWER
	db 37, BATON_PASS
	db 46, GIGA_DRAIN
	db 55, PSYCHIC_M
	db 64, FUTURE_SIGHT
	db 73, CALM_MIND
	db 82, LEAF_BLADE
	db 91, PERISH_SONG
	db 0 ; no more level-up moves
