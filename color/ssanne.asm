
EraseSSAnneWithColor::
	; Tilemap
	ld hl, wVermilionDockTileMapBuffer
	ld bc, (5 * BG_MAP_WIDTH) + SCREEN_WIDTH
	ld a, $14 ; water tile
	call FillMemory

	hlbgcoord 0, 10
	ld de, wVermilionDockTileMapBuffer
	ld bc, (6 * BG_MAP_WIDTH) / 16
	call CopyVideoData

	; Palette

	ld hl, wVermilionDockTileMapBuffer
	ld bc, (5 * BG_MAP_WIDTH) + SCREEN_WIDTH
	ld a, PAL_BG_WATER
	call FillMemory

	; Note: setting the vram bank to 1 is a bit dangerous, since it'll be left at
	; 1 for most of vblank. In this specific case, it seems to work ok (since vblank
	; doesn't need to do anything else at this point in time).
	ld a, 1
	ldh [rVBK], a

	hlbgcoord 0, 10
	ld de, wVermilionDockTileMapBuffer
	ld bc, (6 * BG_MAP_WIDTH) / 16
	call CopyVideoData

	xor a
	ldh [rVBK], a
	ret
