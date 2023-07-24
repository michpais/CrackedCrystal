GetAbilityDescription:
; Print ability description for b
; we can't use PlaceString, because it would linebreak with an empty line inbetween
	push de
	ld hl, AbilityDescriptions
	ld a, [wCurSpecies]
	cp EGG
	jr z, .egg
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
	pop hl
	jr .printabilitydes

.egg:
	ld de, NoAbilityDesc
.printabilitydes:
	hlcoord 0, 12
	jp PlaceString
	ret

NoAbilityDesc:
	db "---@"

INCLUDE "data/abilities/names.asm"

INCLUDE "data/abilities/descriptions.asm"
