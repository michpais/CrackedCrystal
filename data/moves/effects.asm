INCLUDE "data/moves/effects_pointers.asm"

MoveEffects: ; used only for BANK(MoveEffects)

NormalHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

DoSleep:
	checkobedience
	usedmovetext
	doturn
	checkhit
	checksafeguard
	sleeptarget
	endmove

PoisonHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	poisontarget
	posthiteffects
	endmove

LeechHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	draintarget
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

BurnHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	burntarget
	posthiteffects
	endmove

FreezeHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	freezetarget
	posthiteffects
	endmove

ParalyzeHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	paralyzetarget
	posthiteffects
	endmove

Selfdestruct:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	selfdestruct
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

DreamEater:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	eatdream
	checkfaint
	buildopponentrage
	posthiteffects
	endmove

MirrorMove:
	checkobedience
	usedmovetext
	doturn
	mirrormove
	endmove

AttackUp:
	checkobedience
	usedmovetext
	doturn
	attackup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

DefenseUp:
	checkobedience
	usedmovetext
	doturn
	defenseup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpeedUp:
	checkobedience
	usedmovetext
	doturn
	speedup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpecialAttackUp:
	checkobedience
	usedmovetext
	doturn
	specialattackup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpecialDefenseUp:
	checkobedience
	usedmovetext
	doturn
	specialdefenseup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

AccuracyUp:
	checkobedience
	usedmovetext
	doturn
	accuracyup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

EvasionUp:
	checkobedience
	usedmovetext
	doturn
	lowersub
	evasionup
	statupanim
	lowersubnoanim
	raisesub
	statupmessage
	statupfailtext
	endmove

AttackUp2:
	checkobedience
	usedmovetext
	doturn
	attackup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

DefenseUp2:
	checkobedience
	usedmovetext
	doturn
	defenseup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpeedUp2:
	checkobedience
	usedmovetext
	doturn
	speedup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpecialAttackUp2:
	checkobedience
	usedmovetext
	doturn
	specialattackup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpecialDefenseUp2:
	checkobedience
	usedmovetext
	doturn
	specialdefenseup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

AccuracyUp2:
	checkobedience
	usedmovetext
	doturn
	accuracyup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

EvasionUp2:
	checkobedience
	usedmovetext
	doturn
	evasionup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

AttackDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	attackdown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

DefenseDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	defensedown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpeedDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	speeddown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialAttackDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialattackdown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialDefenseDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialdefensedown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

AccuracyDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	accuracydown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

EvasionDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	evasiondown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

AttackDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	attackdown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

DefenseDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	defensedown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpeedDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	speeddown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialAttackDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialattackdown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialDefenseDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialdefensedown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

AccuracyDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	accuracydown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

EvasionDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	evasiondown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

AttackDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	attackdown
	statdownmessage
	posthiteffects
	endmove

DefenseDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
; BUG: Moves that lower Defense can do so after breaking a Substitute (see docs/bugs_and_glitches.md)
	effectchance
	defensedown
	statdownmessage
	posthiteffects
	endmove

SpeedDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	speeddown
	statdownmessage
	posthiteffects
	endmove

SpecialAttackDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	specialattackdown
	statdownmessage
	posthiteffects
	endmove

SpecialDefenseDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	specialdefensedown
	statdownmessage
	posthiteffects
	endmove

AccuracyDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	accuracydown
	statdownmessage
	posthiteffects
	endmove

EvasionDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	evasiondown
	statdownmessage
	posthiteffects
	endmove

DefenseUpHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
; BUG (fixed): Moves that do damage and increase your stats do not increase stats after a KO (see docs/bugs_and_glitches.md)
	defenseup
	statupmessage
	checkfaint
	buildopponentrage
	posthiteffects
	endmove

AttackUpHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	attackup
	statupmessage
	checkfaint
	buildopponentrage
	posthiteffects
	endmove

AllUpHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	allstatsup
	checkfaint
	buildopponentrage
	posthiteffects
	endmove

PayDay:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	payday
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Conversion:
	checkobedience
	usedmovetext
	doturn
	conversion
	endmove

ResetStats:
	checkobedience
	usedmovetext
	doturn
	resetstats
	endmove

Bide:
	storeenergy
	checkobedience
	doturn
	usedmovetext
	unleashenergy
	resettypematchup
	checkhit
	moveanim
	bidefailtext
	applydamage
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Rampage:
	checkrampage
	checkobedience
	doturn
	rampage
	usedmovetext
	checkhit
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

ForceSwitch:
	checkobedience
	usedmovetext
	doturn
	checkhit
	forceswitch
	endmove

MultiHit:
	checkobedience
	usedmovetext
	doturn
	startloop
	lowersub
	checkhit
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	cleartext
	supereffectivelooptext
	checkfaint
	buildopponentrage
	posthiteffects
	endloop
	raisesub
	kingsrock
	endmove

PoisonMultiHit:
	checkobedience
	usedmovetext
	doturn
	startloop
	lowersub
	checkhit
	effectchance
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	cleartext
	supereffectivelooptext
	checkfaint
	buildopponentrage
	posthiteffects
	endloop
	raisesub
	kingsrock
	poisontarget
	endmove

FlinchHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	flinchtarget
	posthiteffects
	endmove

OHKOHit:
	checkobedience
	usedmovetext
	doturn
	stab
	ohko
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	posthiteffects
	endmove

RecoilHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	recoil
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Mist:
	checkobedience
	usedmovetext
	doturn
	mist
	endmove

FocusEnergy:
	checkobedience
	usedmovetext
	doturn
	focusenergy
	endmove

DoConfuse:
	checkobedience
	usedmovetext
	doturn
	checkhit
	checksafeguard
	confuse
	endmove

ConfuseHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	confusetarget
	posthiteffects
	endmove

Heal:
	checkobedience
	usedmovetext
	doturn
	heal
	endmove

Transform:
	checkobedience
	usedmovetext
	doturn
	transform
	endmove

LightScreen:
Reflect:
	checkobedience
	usedmovetext
	doturn
	screen
	endmove

TriAttack:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	posthiteffects
	tristatuschance
	endmove

Toxic:
DoPoison:
	checkobedience
	usedmovetext
	doturn
	checkhit
	stab
	checksafeguard
	poison
	endmove

DoParalyze:
	checkobedience
	usedmovetext
	doturn
	stab
	checkhit
	checksafeguard
	paralyze
	endmove

DoBurn:
	checkobedience
	usedmovetext
	doturn
	checkhit
	stab
	checksafeguard
	burn
	endmove

;SkyAttack:
;	checkcharge
;	checkobedience
;	doturn
;	charge
;	usedmovetext
;	critical
;	damagestats
;	damagecalc
;	stab
;	damagevariation
;	checkhit
;	effectchance
;	moveanim
;	failuretext
;	applydamage
;	criticaltext
;	supereffectivetext
;	checkfaint
;	buildopponentrage
;	flinchtarget
;	kingsrock
;	posthiteffects
;	endmove
;
Substitute:
	checkobedience
	usedmovetext
	doturn
	substitute
	endmove

HyperBeam:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	rechargenextturn
	checkfaint
	buildopponentrage
	posthiteffects
	endmove

Rage:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	checkhit
	ragedamage
	damagevariation
	moveanim
	failuretext
	rage
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Mimic:
	checkobedience
	usedmovetext
	doturn
	checkhit
	mimic
	endmove

Metronome:
	checkobedience
	usedmovetext
	doturn
	metronome
	endmove

LeechSeed:
	checkobedience
	usedmovetext
	doturn
	checkhit
	leechseed
	endmove

Splash:
	checkobedience
	usedmovetext
	doturn
	splash
	endmove

Disable:
	checkobedience
	usedmovetext
	doturn
	checkhit
	disable
	endmove

;RazorWind:
;	checkcharge
;	checkobedience
;	doturn
;	charge
;	usedmovetext
;	critical
;	damagestats
;	damagecalc
;	stab
;	damagevariation
;	checkhit
;	moveanim
;	failuretext
;	applydamage
;	criticaltext
;	supereffectivetext
;	checkfaint
;	buildopponentrage
;	kingsrock
;	posthiteffects
;	endmove
;
Fly:
	checkcharge
	checkobedience
	doturn
	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanimnosub
	raisesub
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

TrapTarget:
	checkobedience
	usedmovetext
	doturn
	checkhit
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	traptarget
	posthiteffects
	endmove

SuperFang:
Psywave:
StaticDamage:
	checkobedience
	usedmovetext
	doturn
	constantdamage
	checkhit
	resettypematchup
	moveanim
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Reversal:
	checkobedience
	usedmovetext
	doturn
	constantdamage
	stab
	checkhit
	moveanim
	failuretext
	applydamage
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Counter:
	checkobedience
	usedmovetext
	doturn
	counter
	moveanim
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Encore:
	checkobedience
	usedmovetext
	doturn
	checkhit
	encore
	endmove

;PainSplit:
;	checkobedience
;	usedmovetext
;	doturn
;	checkhit
;	painsplit
;	endmove
;
Snore:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	snore
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	flinchtarget
	kingsrock
	posthiteffects
	endmove

;Conversion2:
;	checkobedience
;	usedmovetext
;	doturn
;	checkhit
;	conversion2
;	endmove
;
LockOn:
	checkobedience
	usedmovetext
	doturn
	checkhit
	lockon
	endmove

Sketch:
	checkobedience
	usedmovetext
	doturn
	sketch
	endmove

DefrostOpponent:
	checkobedience
	usedmovetext
	doturn
	defrostopponent
	endmove

SleepTalk:
	checkobedience
	usedmovetext
	doturn
	sleeptalk
	endmove

DestinyBond:
	checkobedience
	usedmovetext
	doturn
	destinybond
	endmove

Spite:
	checkobedience
	usedmovetext
	doturn
	checkhit
	spite
	endmove

FalseSwipe:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	falseswipe
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

HealBell:
	checkobedience
	usedmovetext
	doturn
	healbell
	endmove

;TripleKick:
;	checkobedience
;	usedmovetext
;	doturn
;	startloop
;	lowersub
;	checkhit
;	critical
;	damagestats
;	damagecalc
;	triplekick
;	stab
;	damagevariation
;	clearmissdamage
;	moveanimnosub
;	failuretext
;	applydamage
;	criticaltext
;	cleartext
;	supereffectivelooptext
;	checkfaint
;	buildopponentrage
;	posthiteffects
;	kickcounter
;	endloop
;	raisesub
;	kingsrock
;	endmove
;
Thief:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	thief
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

MeanLook:
	checkobedience
	usedmovetext
	doturn
	arenatrap
	endmove

Nightmare:
	checkobedience
	usedmovetext
	doturn
	nightmare
	endmove

FlameWheel:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	defrost
	checkfaint
	buildopponentrage
	burntarget
	posthiteffects
	endmove

Curse:
	checkobedience
	usedmovetext
	doturn
	curse
	endmove

Protect:
	checkobedience
	usedmovetext
	doturn
	protect
	endmove

Spikes:
	checkobedience
	usedmovetext
	doturn
	spikes
	endmove

Foresight:
	checkobedience
	usedmovetext
	doturn
	checkhit
	foresight
	endmove

PerishSong:
	checkobedience
	usedmovetext
	doturn
	perishsong
	endmove

Sandstorm:
	checkobedience
	usedmovetext
	doturn
	startsandstorm
	endmove

Endure:
	checkobedience
	usedmovetext
	doturn
	endure
	endmove

Rollout:
	checkcurl
	checkobedience
	doturn
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	checkhit
	rolloutpower
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Swagger:
	checkobedience
	usedmovetext
	doturn
	checkhit
	switchturn
	attackup2
	switchturn
	lowersub
	statupanim
	raisesub
	failuretext
	switchturn
	statupmessage
	switchturn
	confusetarget
	endmove

FuryCutter:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	checkhit
	furycutter
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Attract:
	checkobedience
	usedmovetext
	doturn
	checkhit
	attract
	endmove

Return:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	happinesspower
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Present:
	checkobedience
	usedmovetext
	doturn
	checkhit
	critical
	damagestats
	present
	damagecalc
	stab
	damagevariation
	clearmissdamage
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Frustration:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	frustrationpower
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Safeguard:
	checkobedience
	usedmovetext
	doturn
	safeguard
	endmove

SacredFire:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	defrost
	checkfaint
	buildopponentrage
	burntarget
	posthiteffects
	endmove

Magnitude:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	getmagnitude
	damagecalc
	stab
	damagevariation
	checkhit
	doubleundergrounddamage
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

BatonPass:
	checkobedience
	usedmovetext
	doturn
	batonpass
	endmove

Pursuit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	pursuit
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

RapidSpin:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	clearhazards
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

MorningSun:
	checkobedience
	usedmovetext
	doturn
	healmorn
	endmove

Synthesis:
	checkobedience
	usedmovetext
	doturn
	healday
	endmove

Moonlight:
	checkobedience
	usedmovetext
	doturn
	healnite
	endmove

HiddenPower:
	checkobedience
	usedmovetext
	doturn
	critical
	hiddenpower
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

RainDance:
	checkobedience
	usedmovetext
	doturn
	startrain
	endmove

SunnyDay:
	checkobedience
	usedmovetext
	doturn
	startsun
	endmove

FakeOut:
	checkobedience
	usedmovetext
	doturn
	checkhit
	fakeout
	moveanim
	failuretext
	endmove

BellyDrum:
	checkobedience
	usedmovetext
	doturn
	bellydrum
	endmove

PsychUp:
	checkobedience
	usedmovetext
	doturn
	psychup
	endmove

MirrorCoat:
	checkobedience
	usedmovetext
	doturn
	mirrorcoat
	moveanim
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

;SkullBash:
;	checkcharge
;	checkobedience
;	doturn
;	charge
;	usedmovetext
;	critical
;	damagestats
;	damagecalc
;	stab
;	damagevariation
;	checkhit
;	moveanim
;	failuretext
;	applydamage
;	criticaltext
;	supereffectivetext
;	checkfaint
;	buildopponentrage
;	kingsrock
;	endturn
;	defenseup
;	statupmessage
;	posthiteffects
;	endmove
;
Twister:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleflyingdamage
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	flinchtarget
	posthiteffects
	endmove

Earthquake:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleundergrounddamage
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	posthiteffects
	endmove

FutureSight:
	checkfuturesight
	checkobedience
	usedmovetext
	doturn
	damagestats
	damagecalc
	futuresight
	damagevariation ; skip here if last turn
	checkhit
	moveanimnosub
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	posthiteffects
	endmove

Gust:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleflyingdamage
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	posthiteffects
	endmove

Stomp:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleminimizedamage
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	flinchtarget
	posthiteffects
	endmove

Solarbeam:
	checkcharge
	checkobedience
	doturn
	skipsuncharge
	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Thunder:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	thunderaccuracy
	checkhit
	effectchance
	stab
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	paralyzetarget
	posthiteffects
	endmove

Teleport:
	checkobedience
	usedmovetext
	doturn
	teleport
	endmove

;BeatUp:
;	checkobedience
;	usedmovetext
;	movedelay
;	doturn
;	startloop
;	lowersub
;	checkhit
;	critical
;	beatup
;	damagecalc
;	damagevariation
;	clearmissdamage
;	moveanimnosub
;	failuretext
;	applydamage
;	criticaltext
;	cleartext
;	supereffectivetext
;	checkfaint
;	buildopponentrage
;	endloop
;	beatupfailtext
;	raisesub
;	kingsrock
;	posthiteffects
;	endmove
;
DefenseCurl:
	checkobedience
	usedmovetext
	doturn
	defenseup
	curl
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

Hail:
	checkobedience
	usedmovetext
	doturn
	starthail
	endmove

Retaliation:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	retaliation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

Hex:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	hex
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	kingsrock
	posthiteffects
	endmove

SpatkSpdefUp:
	checkobedience
	usedmovetext
	doturn
	specialattackup
	lowersub
	statupanim
	raisesub
	statupmessage
	specialdefenseup
	statupmessage
	statupfailtext
	endmove

AttackSpeedUp:
	checkobedience
	usedmovetext
	doturn
	attackup
	lowersub
	statupanim
	raisesub
	statupmessage
	speedup
	statupmessage
	statupfailtext
	endmove

AtkDefUp:
	checkobedience
	usedmovetext
	doturn
	attackup
	lowersub
	statupanim
	raisesub
	statupmessage
	defenseup
	statupmessage
	statupfailtext
	endmove
