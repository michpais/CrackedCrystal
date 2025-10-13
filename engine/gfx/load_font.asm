INCLUDE "gfx/font.asm"

EnableHDMAForGraphics:
	db FALSE

;Get1bppOptionalHDMA: ; unreferenced
;	ld a, [EnableHDMAForGraphics]
;	and a
;	jp nz, Get1bppViaHDMA
;	jp Get1bpp
;
;Get2bppOptionalHDMA: ; unreferenced
;	ld a, [EnableHDMAForGraphics]
;	and a
;	jp nz, Get2bppViaHDMA
;	jp Get2bpp
;
_LoadStandardFont::
	ld de, Font
	ld hl, vTiles1
	lb bc, BANK(Font), 128 ; "A" to "9"
	ldh a, [rLCDC]
	bit rLCDC_ENABLE, a
	jp z, Copy1bpp

	ld de, Font
	ld hl, vTiles1
	lb bc, BANK(Font), 32 ; "A" to "]"
	call Get1bppViaHDMA
	ld de, Font + 32 * LEN_1BPP_TILE
	ld hl, vTiles1 tile $20
	lb bc, BANK(Font), 32 ; "a" to $bf
	call Get1bppViaHDMA
	ld de, Font + 64 * LEN_1BPP_TILE
	ld hl, vTiles1 tile $40
	lb bc, BANK(Font), 32 ; "Ä" to "←"
	call Get1bppViaHDMA
	ld de, Font + 96 * LEN_1BPP_TILE
	ld hl, vTiles1 tile $60
	lb bc, BANK(Font), 32 ; "'" to "9"
	call Get1bppViaHDMA
	ret

_LoadFontsExtra1::
	ld de, FontsExtra_SolidBlackGFX
	ld hl, vTiles2 tile "■" ; $60
	lb bc, BANK(FontsExtra_SolidBlackGFX), 1
	call Get1bppViaHDMA
	ld de, PokegearPhoneIconGFX
	ld hl, vTiles2 tile "☎" ; $62
	lb bc, BANK(PokegearPhoneIconGFX), 1
	call Get2bppViaHDMA
	ld de, FontExtra + 3 tiles ; "<BOLD_D>"
	ld hl, vTiles2 tile "<BOLD_D>"
	lb bc, BANK(FontExtra), 22 ; "<BOLD_D>" to "ぉ"
	call Get2bppViaHDMA
	jr LoadFrame

_LoadFontsExtra2::
	ld de, FontsExtra2_UpArrowGFX
	ld hl, vTiles2 tile "▲" ; $61
	ld b, BANK(FontsExtra2_UpArrowGFX)
	ld c, 1
	call Get2bppViaHDMA
	ret

_LoadFontsBattleExtra::
	ld de, FontBattleExtra
	ld hl, vTiles2 tile $60
	lb bc, BANK(FontBattleExtra), 25
	call Get2bppViaHDMA
	jr LoadFrame

LoadFrame:
	ld a, [wTextboxFrame]
	maskbits NUM_FRAMES
	ld bc, TEXTBOX_FRAME_TILES * LEN_1BPP_TILE
	ld hl, Frames
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, vTiles2 tile "┌" ; $79
	lb bc, BANK(Frames), TEXTBOX_FRAME_TILES ; "┌" to "┘"
	call Get1bppViaHDMA
	ld hl, vTiles2 tile " " ; $7f
	ld de, TextboxSpaceGFX
	lb bc, BANK(TextboxSpaceGFX), 1
	call Get1bppViaHDMA
	ret

LoadBattleFontsHPBar:
	ld de, FontBattleExtra
	ld hl, vTiles2 tile $60
	lb bc, BANK(FontBattleExtra), 12
	call Get2bppViaHDMA
	ld hl, vTiles2 tile $70
	ld de, FontBattleExtra + 16 tiles ; "<DO>"
	lb bc, BANK(FontBattleExtra), 3 ; "<DO>" to "『"
	call Get2bppViaHDMA
	call LoadFrame

LoadHPBar:
	ld de, EnemyHPBarBorderGFX
	ld hl, vTiles2 tile $6c
	lb bc, BANK(EnemyHPBarBorderGFX), 4
	call Get1bppViaHDMA
	ld de, HPExpBarBorderGFX
	ld hl, vTiles2 tile $73
	lb bc, BANK(HPExpBarBorderGFX), 6
	call Get1bppViaHDMA
	ld de, ExpBarGFX
	ld hl, vTiles2 tile $55
	lb bc, BANK(ExpBarGFX), 9
	call Get2bppViaHDMA
	ld de, MobilePhoneTilesGFX + 7 tiles ; mobile phone icon
	ld hl, vTiles2 tile $5e
	lb bc, BANK(MobilePhoneTilesGFX), 2
	call Get2bppViaHDMA
	ret

StatsScreen_LoadFont:
	call _LoadFontsBattleExtra
	ld de, EnemyHPBarBorderGFX
	ld hl, vTiles2 tile $6c
	lb bc, BANK(EnemyHPBarBorderGFX), 4
	call Get1bppViaHDMA
	ld de, HPExpBarBorderGFX
	ld hl, vTiles2 tile $78
	lb bc, BANK(HPExpBarBorderGFX), 1
	call Get1bppViaHDMA
	ld de, HPExpBarBorderGFX + 3 * LEN_1BPP_TILE
	ld hl, vTiles2 tile $76
	lb bc, BANK(HPExpBarBorderGFX), 2
	call Get1bppViaHDMA
	ld de, ExpBarGFX
	ld hl, vTiles2 tile $55
	lb bc, BANK(ExpBarGFX), 8
	call Get2bppViaHDMA
LoadStatsScreenPageTilesGFX:
	ld de, StatsScreenPageTilesGFX
	ld hl, vTiles2 tile $31
	lb bc, BANK(StatsScreenPageTilesGFX), 17
	call Get2bppViaHDMA
	ret

LoadSummaryStatusIconPartyMenu:
	push bc
	push de
	; check if we're even
	ld a, [wTempB]
	bit 0, a
	jr z, .even
	ld hl, PartyStatusIconGFXOdd
	jr .picked_icon
.even
	ld hl, PartyStatusIconGFXEven
.picked_icon
	call GetStatusConditionIndex
	ld bc, 2 tiles
	call AddNTimes
	ld d, h
	ld e, l
	; here, we basically need to copy the
	; ld hl, vTiles tile [tile value]
	; where the tile value is dynamic. However, we can't
	; use a in the [tile value] since that doesn't fit syntax.
	; Thus we do this block since 
	; vTiles = $80 * TILE_SIZE, tile = "+ TILE_SIZE *", TILE_SIZE = 16 bytes
	ld a, [wTempB]
	add a
	cp 5
	jr c, .first_tile_row
	add $0a
.first_tile_row
	add $47
	ld hl, vTiles1 ; hl = $8000
	ld b, 0
	ld c, a
	; each sla multiplies by 2. Each rl b ensures overflow goes into b
	sla c ; multiply a by 16 (tile_length = $10)
	sla c ; 
	rl b
	sla c
	rl b
	sla c
	rl b
	add hl, bc               ; hl = vTiles1 + tile_length * a
	; end hl calculation block
	; don't need to determine odd/even since always in same bank
	lb bc, BANK(PartyStatusIconGFXOdd), 2 
	call Request2bpp
	pop de ; keep correct wPartyMon status
	push de ; and then re-save it
	farcall LoadSummaryStatusIconPartyMenuPalette
	pop de
	pop bc
	ret

LoadSummaryStatusIcon:
	push de
	xor a
	ld de, wTempMonStatus
	call GetStatusConditionIndex
	ld hl, SummaryStatusIconGFX
	ld bc, 2 tiles
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, vTiles1 tile $5d
	lb bc, BANK(SummaryStatusIconGFX), 2
	call Request2bpp
	farcall LoadSummaryStatusIconPalette
	pop de
	ret

LoadPlayerStatusIcon:
	push de
	ld de, wBattleMonStatus
	call GetStatusConditionIndex
	ld hl, StatusIconGFX
	ld bc, 2 tiles
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, vTiles1 tile $5b
	lb bc, BANK(StatusIconGFX), 2
	call Request2bpp
	farcall LoadPlayerStatusIconPalette
	pop de
	ret

LoadStatusIcons:
	call LoadPlayerStatusIcon
	; fallthrough
LoadEnemyStatusIcon:
	push de
	ld de, wEnemyMonStatus
	call GetStatusConditionIndex
	ld hl, EnemyStatusIconGFX
	ld bc, 2 tiles
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, vTiles1 tile $5d
	lb bc, BANK(EnemyStatusIconGFX), 2
	call Request2bpp
	farcall LoadEnemyStatusIconPalette
	pop de
	ret
