BattleCommand_StartSun:
	ld b, WEATHER_SUN
	ld hl, SunGotBrightText
	jr StartWeather
BattleCommand_StartRain:
	ld b, WEATHER_RAIN
	ld hl, DownpourText
	jr StartWeather
BattleCommand_StartSandstorm:
	ld b, WEATHER_SANDSTORM
	ld hl, SandstormBrewedText
	jr StartWeather
BattleCommand_StartHail:
	ld b, WEATHER_HAIL
	ld hl, ItStartedToHailText
StartWeather:
	ld a, [wBattleWeather]
	cp b
	jmp z, BattleEffect_ButItFailed

	ld a, b
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	call AnimateCurrentMove
	jmp StdBattleTextbox ; hl has text pointer already
