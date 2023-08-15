AbilityDescriptions::
; entries correspond to ability ids (see constants/ability_constants.asm)
    table_width 2, AbilityDescriptions
    dw OvergrowDescription
    dw BlazeDescription
    dw TorrentDescription
    dw ShieldDustDescription
    dw ShedSkinDescription
    dw CompoundEyesDescription
    dw SwarmDescription
    dw KeenEyeDescription
    dw GutsDescription
    dw IntimidateDescription
    dw StaticDescription
    dw SandVeilDescription
    dw PoisonPointDescription
    dw CuteCharmDescription
    dw FlashFireDescription
    dw InnerFocusDescription
    dw ChlorophyllDescription
    dw EffectSporeDescription
    dw LimberDescription
    dw CloudNineDescription
    dw VitalSpiritDescription
    dw WaterAbsorbDescription
    dw ClearBodyDescription
    dw SturdyDescription
    dw OwnTempoDescription
    dw ThickFatDescription
    dw StickyHoldDescription
    dw ShellArmorDescription
    dw LevitateDescription
    dw InsomniaDescription
    dw RockHeadDescription
    dw SereneGraceDescription
    dw SwiftSwimDescription
    dw NaturalCureDescription
    dw FlameBodyDescription
    dw HyperCutterDescription
    dw VoltAbsorbDescription
    dw ImmunityDescription
    dw PressureDescription
    dw SynchronizeDescription
    dw HugePowerDescription
    dw SnowWarningDescription
    dw SuctionCupsDescription
    dw SniperDescription
    dw SandstreamDescription
    assert_table_length NUM_ABILITIES

OvergrowDescription:
    db   "Powers up GRASS type"
    next "moves in a pinch@"

BlazeDescription:
    db   "Powers up FIRE type"
    next "moves in a pinch@"

TorrentDescription:
    db   "Powers up WATER type"
    next "moves in a pinch@"

ShieldDustDescription:
    db   "Can't be hit by"
    next "move effects@"

ShedSkinDescription:
    db   "May cure itself of"
    next "status conditions@"

CompoundEyesDescription:
    db   "Raises ACCURACY"
    next "@"

SwarmDescription:
    db   "Powers up BUG type"
    next "moves in a pinch@"

KeenEyeDescription:
    db   "Prevents loss of"
    next "ACCURACY@"
   
GutsDescription:
    db   "Boosts ATTACK with a"
    next "status condition@"
   
IntimidateDescription:
    db   "Lowers foe's ATTACK"
    next "upon entering battle@"
   
StaticDescription:
    db   "May paralyze on"
    next "contact@"
   
SandVeilDescription:
    db   "Ups evasion in a"
    next "sandstorm@"
   
PoisonPointDescription:
    db   "May poison on"
    next "contact@"
   
CuteCharmDescription:
    db   "May infatuate on"
    next "contact@"
   
FlashFireDescription:
    db   "Powers up FIRE type"
    next "moves if hit by fire@"
   
InnerFocusDescription:
    db   "Prevents flinching"
    next "@"
   
ChlorophyllDescription:
    db   "Raises SPEED in"
    next "sunshine@"
   
EffectSporeDescription:
    db   "May leave spores on"
    next "contact@"
   
LimberDescription:
    db   "Prevents paralysis"
    next "@"
   
CloudNineDescription:
    db   "Negates weather"
    next "effects@"
   
VitalSpiritDescription:
    db   "Prevents sleep"
    next "@"
   
WaterAbsorbDescription:
    db   "Heals from WATER"
    next "type attacks@"
   
ClearBodyDescription:
    db   "Prevents stat"
    next "reduction@"
   
SturdyDescription:
    db   "Endures hits from"
    next "full HP@"
   
OwnTempoDescription:
    db   "Prevents confusion"
    next "@"
   
ThickFatDescription:
    db   "Protects against"
    next "heat and cold@"
   
StickyHoldDescription:
    db   "Prevents item theft"
    next "@"
   
ShellArmorDescription:
    db   "Blocks critical hits"
    next "@"
   
LevitateDescription:
    db   "Immune to GROUND"
    next "type attacks@"
   
InsomniaDescription:
    db   "Prevents sleep"
    next "@"
   
RockHeadDescription:
    db   "Prevents recoil"
    next "damage@"
   
SereneGraceDescription:
    db   "Promotes additional"
    next "move effects@"
   
SwiftSwimDescription:
    db   "Raises SPEED in rain"
    next "@"
   
NaturalCureDescription:
    db   "Switching out heals"
    next "status conditions@"
   
FlameBodyDescription:
    db   "May burn on contact"
    next "@"
   
HyperCutterDescription:
    db   "Prevents ATTACK"
    next "reduction@"
   
VoltAbsorbDescription:
    db   "Heals from ELECTRIC"
    next "type attacks@"
   
ImmunityDescription:
    db   "Prevents poisoning"
    next "@"
   
PressureDescription:
    db   "Doubles foe's PP"
    next "usage@"
   
SynchronizeDescription:
    db   "Passes on status"
    next "conditions to foe@"
   
HugePowerDescription:
    db   "Doubles physical"
    next "ATTACK power@"
   
SnowWarningDescription:
    db   "Summons a hail storm"
    next "upon entering battle@"
   
SuctionCupsDescription:
    db   "Anchors the body"
    next "to the battlefield@"
   
SniperDescription:
    db   "Critical hits deal"
    next "additional damage@"
   
SandstreamDescription:
    db   "Summons a sandstorm"
    next "upon entering battle@"
   