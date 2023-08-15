;RunActivationAbilitiesInner:
;	; Chain-triggering causes graphical glitches, so ensure animations
;	; are re-enabled (which also takes care of existing ability slideouts)
;	call EnableAnimations
;	call HasUserFainted
;	ret z
;	call HasOpponentFainted
;	ld hl, BattleEntryAbilities
;	jr z, UserAbilityJumptable
;	ld hl, BattleEntryAbilitiesNonfainted
;	jr UserAbilityJumptable
;
;RunEnemyStatusHealAbilities:
;	call CallOpponentTurn
;RunStatusHealAbilities:
;	ld hl, StatusHealAbilities
UserAbilityJumptable:
	call GetUserAbility
AbilityJumptable:
	; If we at some point make the AI learn abilities, keep this.
	; For now it just jumps to the general jumptable function
	jmp BattleJumptable

;BattleEntryAbilitiesNonfainted:
;	dbw INTIMIDATE, IntimidateAbility
;BattleEntryAbilities:
;	dbw DRIZZLE, DrizzleAbility
;	dbw DROUGHT, DroughtAbility
;	dbw SAND_STREAM, SandStreamAbility
;	dbw SNOW_WARNING, SnowWarningAbility
;	dbw CLOUD_NINE, CloudNineAbility
;	dbw PRESSURE, PressureAbility
;	; fallthrough
;StatusHealAbilities:
; Status immunity abilities that autoproc if the user gets the status or the ability
;	dbw LIMBER, LimberAbility
;	dbw IMMUNITY, ImmunityAbility
;	dbw INSOMNIA, InsomniaAbility
;	dbw VITAL_SPIRIT, VitalSpiritAbility
;	dbw OWN_TEMPO, OwnTempoAbility
;	dbw OBLIVIOUS, ObliviousAbility
;	dbw -1, -1
;
;CloudNineAbility:
;	ld hl, NotifyCloudNine
;	jr NotificationAbilities
;PressureAbility:
;	ld hl, NotifyPressure
;	jr NotificationAbilities
;NotificationAbilities:
;	push hl
;	call DisableAnimations
;	call ShowAbilityActivation
;	pop hl
;	call StdBattleTextbox
;	jmp EnableAnimations
;
;ImmunityAbility:
;	ld a, 1 << PSN
;	jr HealStatusAbility
;WaterVeilAbility:
;	ld a, 1 << BRN
;	jr HealStatusAbility
;MagmaArmorAbility:
;	ld a, 1 << FRZ
;	jr HealStatusAbility
;LimberAbility:
;	ld a, 1 << PAR
;	jr HealStatusAbility
;InsomniaAbility:
;VitalSpiritAbility:
;	ld a, SLP
	; fallthrough
HealStatusAbility:
	ld b, a
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
	and b
	ret z ; not afflicted/wrong status
;	call DisableAnimations
;	call ShowAbilityActivation
	farcall AbilityRecoveryAnim
	ld a, BATTLE_VARS_STATUS
	call GetBattleVarAddr
	xor a
	ld [hl], a
	call GetUserAbility
	ld [wNamedObjectIndex], a
	call GetAbilityName
	ld hl, BecameHealthyText
	call StdBattleTextbox
;	call EnableAnimations
	ldh a, [hBattleTurn]
	and a
	jp z, UpdateBattleMonInParty
	jp UpdateEnemyMonInParty

;OwnTempoAbility:
;	ld a, BATTLE_VARS_SUBSTATUS3
;	call GetBattleVar
;	bit SUBSTATUS_CONFUSED, a
;	ret z ; not confused
;	call DisableAnimations
;	call ShowAbilityActivation
;	ld a, BATTLE_VARS_SUBSTATUS3
;	call GetBattleVarAddr
;	res SUBSTATUS_CONFUSED, [hl]
;	ld hl, ConfusedNoMoreText
;	call StdBattleTextbox
;	jmp EnableAnimations
;
;ObliviousAbility:
;	ld a, BATTLE_VARS_SUBSTATUS1
;	call GetBattleVar
;	bit SUBSTATUS_IN_LOVE, a
;	ret z ; not infatuated
;	call DisableAnimations
;	call ShowAbilityActivation
;	ld a, BATTLE_VARS_SUBSTATUS1
;	call GetBattleVarAddr
;	res SUBSTATUS_IN_LOVE, [hl]
;	ld hl, NoLongerInfatuatedText
;	call StdBattleTextbox
;	jmp EnableAnimations
;
EndturnAbilitiesA:
	ld hl, EndturnAbilityTableA
	; fallthrough
EndturnAbilities:
	push hl
	farcall HasUserFainted
	pop hl
	ret z
;	call UserAbilityJumptable
;	ld hl, StatusHealAbilities
	jr UserAbilityJumptable

EndturnAbilityTableA:
	dbw SHED_SKIN, ShedSkinAbility
	dbw -1, -1

ShedSkinAbility:
; Cure a non-volatile status 30% of the time
	call BattleRandom
	cp 1 + (30 percent)
	ret nc
	; fallthrough
NaturalCureAbility:
HealAllStatusAbility:
	ld a, ALL_STATUS
	jr HealStatusAbility

;; Lasts 5 turns consistent with Generation VI.
;DrizzleAbility: ;may be added later
;	ld a, WEATHER_RAIN
;	jr WeatherAbility
;DroughtAbility: ;may be added later
;	ld a, WEATHER_SUN
;	jr WeatherAbility
;SandStreamAbility:
;	ld a, WEATHER_SANDSTORM
;	jr WeatherAbility
;SnowWarningAbility:
;	ld a, WEATHER_HAIL
;	; fallthrough
;WeatherAbility:
;	ld b, a
;	ld a, [wBattleWeather]
;	cp b
;	ret z ; don't re-activate it
;
;	call DisableAnimations
;	call ShowAbilityActivation
;	; Disable running animations as part of Start(wWeather) commands. This will not block
;	; Call_PlayBattleAnim that plays the animation manually.
;	ld a, b
;	cp WEATHER_RAIN
;	jr z, .handlerain
;	cp WEATHER_SUN
;	jr z, .handlesun
;	cp WEATHER_HAIL
;	jr z, .handlehail
;	; is sandstorm
;	ld de, SANDSTORM
;	farcall Call_PlayBattleAnim
;	farcall BattleCommand_startsandstorm
;	jmp EnableAnimations
;.handlerain
;	ld de, RAIN_DANCE
;	farcall Call_PlayBattleAnim
;	farcall BattleCommand_startrain
;	jmp EnableAnimations
;.handlesun
;	ld de, SUNNY_DAY
;	farcall Call_PlayBattleAnim
;	farcall BattleCommand_startsun
;	jmp EnableAnimations
;.handlehail
;	ld de, HAIL
;	farcall Call_PlayBattleAnim
;	farcall BattleCommand_starthail
;	jmp EnableAnimations
;
;IntimidateAbility:
;	; does not work against Inner Focus, Own Tempo, Oblivious (which may be added later)
;	call GetOpponentAbility
;	ld b, a
;	push af
;	farcall BufferAbility
;	pop af
;	ld hl, NoIntimidateAbilities
;	call IsInByteArray
;	jr nc, .intimidate_ok
;	call DisableAnimations
;	call ShowAbilityActivation
;	call ShowEnemyAbilityActivation
;	ld hl, BattleText_IntimidateResisted
;	call StdBattleTextbox
;	jmp EnableAnimations
;
;.intimidate_ok
;	call DisableAnimations
;	farcall BattleCommand_AttackDown
;	jmp EnableAnimations
;
;INCLUDE "data/abilities/no_intimidate_abilities.asm"
;
;RunEnemyOwnTempoAbility:
;	call SwitchTurn
;	call GetTrueUserAbility
;	cp OWN_TEMPO
;	call z, OwnTempoAbility
;	jmp SwitchTurn
;
RunEnemySynchronizeAbility:
	farcall SwitchTurnCore
	call GetUserAbility
	cp SYNCHRONIZE
	call z, SynchronizeAbility
	farcall SwitchTurnCore
	ret

SynchronizeAbility:
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
	and 1 << PAR | 1 << BRN | 1 << PSN
	ret z ; not statused or frozen/asleep (which doesn't proc Synchronize)
	;call ShowAbilityActivation
	farcall ResetMiss
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
	cp 1 << PAR
	jr z, .is_par
	cp 1 << BRN
	jr z, .is_brn
	;cp 1 << PSN
	;jr z, .is_psn
	;farcall BattleCommand_toxic
.is_psn
	call CanPoisonTarget
	cp 1
	ret z
	call PrintAbilityActivated
	farcall PoisonTarget
	ret
.is_par
	call CanParalyzeTarget
	cp 1
	ret z
	call PrintAbilityActivated
	farcall ParalyzeTarget
	ret
.is_brn
	call CanBurnTarget
	cp 1
	ret z
	call PrintAbilityActivated
	farcall BurnTarget
	ret

RunContactAbilities:
; turn perspective is from the attacker
; Only works 30% of the time.
	call BattleRandom
	cp 1 + 30 percent
	ret nc
	farcall SwitchTurnCore
	call GetUserAbility
	ld hl, TargetContactAbilities
	call AbilityJumptable
	farcall SwitchTurnCore
	ret

TargetContactAbilities:
	dbw EFFECT_SPORE, EffectSporeAbility
	dbw FLAME_BODY, FlameBodyAbility
	dbw POISON_POINT, PoisonPointAbility
	dbw STATIC, StaticAbility
	dbw CUTE_CHARM, CuteCharmAbility
	dbw -1, -1

CuteCharmAbility:
	farcall HasUserFainted
	ret z

	; Only works if opponent isn't already attracted
	ld a, BATTLE_VARS_SUBSTATUS1_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_IN_LOVE, [hl]
	ret nz
	farcall CheckOppositeGender
	ret c
	; Implement when we implement OBLIVIOUS
	;call GetOpponentAbility
	;cp OBLIVIOUS
	;ret z
	; this runs ShowAbilityActivation when relevant
	call PrintAbilityActivated
	ld a, BATTLE_VARS_SUBSTATUS1_OPP
	call GetBattleVarAddr
	set SUBSTATUS_IN_LOVE, [hl]
	ld de, ANIM_IN_LOVE
	farcall PlayOpponentBattleAnim
	; 'fell in love!'
	ld hl, FellInLoveText
	jp StdBattleTextbox
	ret

EffectSporeAbility:
	call CheckIfTargetIsGrassType
	ret z
;	farcall GetOpponentItemAfterUnnerve
;	ld a, b
;	cp HELD_SAFETY_GOGGLES
;	ret z
	call BattleRandom
	cp 1 + 33 percent
	jr c, PoisonPointAbility
	cp 1 + 66 percent
	jr c, StaticAbility

	call CanSleepTarget1
	cp 1
	ret z
	call CanSleepTarget2
	cp 1
	ret z 
	call PrintAbilityActivated
	farcall SleepTarget
	ret
	;jr AfflictStatusAbility
FlameBodyAbility:
	call CanBurnTarget
	cp 1
	ret z
	call PrintAbilityActivated
	farcall BurnTarget
	ret
PoisonPointAbility:
	call CanPoisonTarget
	cp 1
	ret z
	call PrintAbilityActivated
	farcall PoisonTarget
	ret
StaticAbility:
	call CanParalyzeTarget
	cp 1
	ret z
	call PrintAbilityActivated
	farcall ParalyzeTarget ;BattleCommand_ParalyzeTarget
	ret

PrintAbilityActivated:
	call GetUserAbility
	ld [wNamedObjectIndex], a
	call GetAbilityName
	ld hl, TargetAbilityTookEffect
	jp StdBattleTextbox

;CheckNullificationAbilities:
;; Doesn't deal with the active effect of this, but just checking if they apply vs
;; an opponent's used attack (not Overcoat vs powder which is checked with Grass)
;	; Most abilities depends on types and can use a lookup table, but a few
;	; don't. Check these first.
;	call GetOpponentAbility
;	ld b, a
;	cp FLASH_FIRE
;	jr z, .flash_fire
;
;	ld a, BATTLE_VARS_MOVE_CATEGORY
;	call GetBattleVar
;	cp STATUS
;	ret z
;
;.check_others
;	ld hl, TypeNullificationAbilities
;.loop
;	ld a, [hli]
;	cp b
;	jr z, .found_ability
;	inc hl
;	cp -1
;	jr nz, .loop
;	ret
;
;.found_ability
;	ld a, [hl]
;	ld b, a
;	ld a, BATTLE_VARS_MOVE_TYPE
;	call GetBattleVar
;	cp b
;	jr z, .ability_ok
;	ret
;
;.flash_fire
;	; Also affected by status moves and Will-O-Wisp
;	ld a, BATTLE_VARS_MOVE_EFFECT
;	call GetBattleVar
;	cp EFFECT_BURN
;	jr nz, .check_others
;
;.ability_ok
;	ld a, ATKFAIL_ABILITY
;	ld [wAttackMissed], a
;	xor a ; kind of redundant, but helpful for the AI
;	ld [wTypeMatchup], a
;	ret
;
;INCLUDE "data/abilities/type_nullification_abilities.asm"
;
;RunEnemyNullificationAbilities:
;; At this point, we are already certain that the ability will activate, so no additional
;; checks are required.
;	call CallOpponentTurn
;.do_enemy_abilities
;	ld hl, NullificationAbilities
;	call UserAbilityJumptable
;	ret nz
;
;	; For other abilities, don't do anything except print a message (for example Levitate)
;	call DisableAnimations
;	call ShowAbilityActivation
;	call SwitchTurn
;	ld hl, DoesntAffectText
;	call StdBattleTextbox
;	call EnableAnimations
;	jmp SwitchTurn
;
;NullificationAbilities:
;	dbw FLASH_FIRE, FlashFireAbility
;	dbw VOLT_ABSORB, VoltAbsorbAbility
;	dbw WATER_ABSORB, WaterAbsorbAbility
;	dbw -1, -1
;
;FlashFireAbility:
;	call DisableAnimations
;	call ShowAbilityActivation
;	ld a, BATTLE_VARS_SUBSTATUS1
;	call GetBattleVarAddr
;	ld a, [hl]
;	and 1 << SUBSTATUS_FLASH_FIRE
;	jr nz, .already_fired_up
;	set SUBSTATUS_FLASH_FIRE, [hl]
;	ld hl, FirePoweredUpText
;	call StdBattleTextbox
;	jmp EnableAnimations
;.already_fired_up
;	call SwitchTurn
;	ld hl, DoesntAffectText
;	call StdBattleTextbox
;	call EnableAnimations
;	jmp SwitchTurn
;
;VoltAbsorbAbility:
;WaterAbsorbAbility:
;	call DisableAnimations
;	call ShowAbilityActivation
;	farcall CheckFullHP
;	jr z, .full_hp
;	call GetQuarterMaxHP
;	farcall RestoreHP
;	ld hl, RegainedHealthText
;	call StdBattleTextbox
;	jmp EnableAnimations
;.full_hp
;	ld hl, HPIsFullText
;	call StdBattleTextbox
;	jmp EnableAnimations
;
;ApplySpeedAbilities:
;; Passive speed boost abilities
;	call GetTrueUserAbility
;	cp SWIFT_SWIM
;	jr z, .swift_swim
;	cp CHLOROPHYLL
;	ret nz
;	ld h, WEATHER_SUN
;	jr .weather_ability
;.swift_swim
;	ld h, WEATHER_RAIN
;	jr .weather_ability
;.weather_ability
;	call GetWeatherAfterUserUmbrella
;	cp h
;	ret nz
;	ln a, 2, 1 ; x2
;.apply_mod
;	jmp MultiplyAndDivide
;
;ApplyAccuracyAbilities:
;	call GetTrueUserAbility
;	ld hl, UserAccuracyAbilities
;	call AbilityJumptable
;	call GetOpponentAbility
;	ld hl, TargetAccuracyAbilities
;	jmp AbilityJumptable
;
;UserAccuracyAbilities:
;	dbw COMPOUND_EYES, CompoundEyesAbility
;	dbw -1, -1
;
;TargetAccuracyAbilities:
;	dbw SAND_VEIL, SandVeilAbility
;	dbw -1, -1
;
;CompoundEyesAbility:
;; Increase accuracy by 30%
;	ln a, 13, 10 ; x1.3
;	jmp MultiplyAndDivide
;
;SandVeilAbility:
;	ld b, WEATHER_SANDSTORM
;    ; fallthrough
;WeatherAccAbility:
;; Decrease target accuracy by 20% in relevant weather
;	call GetWeatherAfterOpponentUmbrella
;	cp b
;	ret nz
;	ln a, 4, 5 ; x0.8
;	jmp MultiplyAndDivide
;
;ApplyDamageAbilities:
;	call GetUserAbility
;	ld hl, OffensiveDamageAbilities
;	call AbilityJumptable
;	call GetOpponentAbility
;	ld hl, DefensiveDamageAbilities
;	jmp AbilityJumptable
;
;OffensiveDamageAbilities:
;	dbw HUGE_POWER, HugePowerAbility
;	dbw OVERGROW, OvergrowAbility
;	dbw BLAZE, BlazeAbility
;	dbw TORRENT, TorrentAbility
;	dbw SWARM, SwarmAbility
;	dbw GUTS, GutsAbility
;	dbw -1, -1
;
;DefensiveDamageAbilities:
;	dbw THICK_FAT, EnemyThickFatAbility
;	dbw -1, -1
;
;TechnicianAbility:
;	ld a, d
;	cp 61
;	ret nc
;	ln a, 3, 2 ; x1.5
;	jmp MultiplyAndDivide
;
;HugePowerAbility:
;; Doubles physical attack
;	ld a, $21
;	jmp ApplyPhysicalAttackDamageMod
;
;OvergrowAbility:
;	ld b, GRASS
;	jr PinchAbility
;BlazeAbility:
;	ld b, FIRE
;	jr PinchAbility
;TorrentAbility:
;	ld b, WATER
;	jr PinchAbility
;SwarmAbility:
;	ld b, BUG
;PinchAbility:
;; 150% damage if the user is in a pinch (1/3HP or less) for given type
;	ld a, BATTLE_VARS_MOVE_TYPE
;	call GetBattleVar
;	cp b
;	ret nz
;	;farcall GetThirdMaxHP
;	;farcall CheckUserHasEnoughHP
;	;ret nz
;	ln a, 3, 2 ; x1.5
;	call MultiplyAndDivide
;	ret
;
;GutsAbility:
;; 150% physical attack if user is statused
;	ld a, BATTLE_VARS_STATUS
;	call GetBattleVar
;	and a
;	ret z
;	ld a, $32
;	jmp ApplyPhysicalAttackDamageMod
;
;EnemyThickFatAbility:
;; 50% damage for Fire and Ice-type moves
;	ld a, BATTLE_VARS_MOVE_TYPE
;	call GetBattleVar
;	cp FIRE
;	jr z, .ok
;	cp ICE
;	ret nz
;.ok
;	ln a, 1, 2 ; x0.5
;	jmp MultiplyAndDivide
;
;RunSwitchAbilities:
;; abilities that activate when you switch out
;	call GetTrueUserAbility
;	cp NATURAL_CURE
;    jr z, NaturalCureAbility
;	ret nz
;
;DisableAnimations:
;	ld a, [wAnimationsDisabled]
;	and a
;	ret nz
;	push hl
;	push de
;	push bc
;	call LoadTileMapToTempTileMap
;	pop bc
;	pop de
;	pop hl
;	ld a, 1
;	ld [wAnimationsDisabled], a
;	ret
;
;EnableAnimations:
;	ld a, [wAnimationsDisabled]
;	and a
;	ret z
;	call DismissAbilityOverlays
;	xor a
;	ld [wAnimationsDisabled], a
;	ret
;
;ShowEnemyAbilityActivation::
;	call CallOpponentTurn
;ShowAbilityActivation::
;	push hl
;	push de
;	push bc
;	ld a, BATTLE_VARS_ABILITY
;	call GetBattleVar
;	ld b, a
;	call PerformAbilityGFX
;
;	jmp PopBCDEHL
;
;RunPostBattleAbilities::
;; Checks party for potentially finding items (Pickup) or curing status (Natural Cure)
;	; Ensure that ability slideouts appear for the correct side for Pickup.
;	call SetPlayerTurn
;	ld a, [wPartyCount]
;	jr .first_pass
;.loop
;	ld a, [wCurPartyMon]
;.first_pass
;	dec a
;	cp $ff
;	ret z
;
;	ld [wCurPartyMon], a
;
;	ld a, MON_SPECIES
;	call GetPartyParamLocation
;	ld c, [hl]
;	ld a, c
;    cp EGG
;    jr z, .loop
;
;	ld a, MON_ABILITY
;    call GetPartyParamLocation
;	ld a, [hl]
;	cp NATURAL_CURE
;	jr z, .natural_cure
;	;cp PICKUP
;	;call z, .Pickup
;	jr .loop
;
;.natural_cure
;	; Heal status
;	ld a, MON_STATUS
;	call GetPartyParamLocation
;	xor a
;	ld [hl], a
;	jr .loop
;
;INCLUDE "engine/battle/ability_gfx.asm"

CanPoisonTarget:
	ld a, b
	lb bc, POISON, STEEL
	lb de, IMMUNITY, HELD_PREVENT_POISON
	ld h, 1 << PSN
	jr CanStatusTarget
CanBurnTarget:
	ld a, b
	lb bc, FIRE, FIRE
	lb de, NO_ABILITY, HELD_PREVENT_BURN
	ld h, 1 << BRN
	jr CanStatusTarget
CanParalyzeTarget:
	ld a, b
	lb bc, ELECTRIC, ELECTRIC
	lb de, LIMBER, HELD_PREVENT_PARALYZE
	ld h, 1 << PAR
	jr CanStatusTarget
CanSleepTarget1:
	ld a, b
	lb bc, -1, -1
	lb de, INSOMNIA, HELD_PREVENT_SLEEP
	ld h, SLP_MASK
	jr CanStatusTarget
CanSleepTarget2:
	ld a, b
	lb bc, -1, -1
	lb de, VITAL_SPIRIT, HELD_PREVENT_SLEEP
	ld h, SLP_MASK
CanStatusTarget:
;	push af
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVarAddr
	and a
	jr nz, .failed

	push de
	push bc
	ld a, b
	call CheckIfTargetIsSomeType
	pop bc
	jr z, .failed
	ld a, c
	call CheckIfTargetIsSomeType
	jr z, .failed
	farcall SafeCheckSafeguard
	jr nz, .failed
	farcall CheckSubstituteOpp
	jr nz, .failed
	farcall GetOpponentItem
	ld a, b
	pop de
	cp e
	jr z, .failed
	call GetOpponentAbility
	cp d
	jr z, .failed
	ld a, 0
	ret

.failed
	ld a, 1
	ret
	
CheckIfTargetIsGrassType::
	ld a, GRASS
	jr CheckIfTargetIsSomeType
CheckIfTargetIsPoisonType::
	ld a, POISON
	jr CheckIfTargetIsSomeType
CheckIfTargetIsElectricType::
	ld a, ELECTRIC
	jr CheckIfTargetIsSomeType
CheckIfTargetIsSteelType::
	ld a, STEEL
	jr CheckIfTargetIsSomeType
CheckIfTargetIsFireType::
	ld a, FIRE
	jr CheckIfTargetIsSomeType
CheckIfTargetIsIceType::
	ld a, ICE
	jr CheckIfTargetIsSomeType
CheckIfTargetIsDarkType::
	ld a, DARK
	jr CheckIfTargetIsSomeType
CheckIfTargetIsRockType::
	ld a, ROCK
	jr CheckIfTargetIsSomeType
CheckIfTargetIsGroundType::
	ld a, GROUND
	jr CheckIfTargetIsSomeType
CheckIfTargetIsGhostType::
	ld a, GHOST
CheckIfTargetIsSomeType::
	ld b, a
	ldh a, [hBattleTurn]
	jr CheckIfSomeoneIsSomeType
CheckIfUserIsFlyingType::
	ld a, FLYING
	jr CheckIfUserIsSomeType
CheckIfUserIsPoisonType::
	ld a, POISON
	jr CheckIfUserIsSomeType
CheckIfUserIsGhostType::
	ld a, GHOST
	jr CheckIfUserIsSomeType
CheckIfUserIsGroundType::
	ld a, GROUND
	jr CheckIfUserIsSomeType
CheckIfUserIsRockType::
	ld a, ROCK
	jr CheckIfUserIsSomeType
CheckIfUserIsSteelType::
	ld a, STEEL
	jr CheckIfUserIsSomeType
CheckIfUserIsIceType::
	ld a, ICE
CheckIfUserIsSomeType::
	ld b, a
	ldh a, [hBattleTurn]
	xor 1
CheckIfSomeoneIsSomeType:
	ld c, a
	ld de, wEnemyMonType1
	ld a, c
	and a
	jr z, .ok
	ld de, wBattleMonType1
.ok
	ld a, [de]
	inc de
	cp b
	ret z
	ld a, [de]
	cp b
	ret
