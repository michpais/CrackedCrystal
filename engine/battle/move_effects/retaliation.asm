BattleCommand_Retaliation:
; Get the user's quarter of max HP
	callfar GetHalfMaxHP
	callfar CheckUserHasEnoughHP
	jr c, .failed
	jp DoubleDamage
.failed
	ret

; Return if it's 0 (no condition)
;	and a
;	ret z
; It's not 0, so double the damage
;	jp DoubleDamage
