; $60 bytes for each tileset. Each byte is the palette number for a tile.
; Remaining $a0 tiles aren't part of the tileset and are set to 7 (text palette).
; Refer to MapPaletteSets for clarification on specific colors
; These use the pokecrystal macro for tileset palettes
; Also, this repo can use Polished Map's "Priority Colors" already
; In the event of Duplicate tilesets, the asm files are named to match the png files
MapPaletteAssignments:
	INCLUDE "color/tilesets/overworld.asm"   ; OVERWORLD
	INCLUDE "color/tilesets/reds_house.asm"  ; REDS_HOUSE_1  (Duplicate of REDS_HOUSE_2)
	INCLUDE "color/tilesets/pokecenter.asm"  ; MART          (Duplicate of POKECENTER)
	INCLUDE "color/tilesets/forest.asm"      ; FOREST
	INCLUDE "color/tilesets/reds_house.asm"  ; REDS_HOUSE_2  (Duplicate of REDS_HOUSE_1)
	INCLUDE "color/tilesets/gym.asm"         ; DOJO          (Duplicate of GYM)
	INCLUDE "color/tilesets/pokecenter.asm"  ; POKECENTER    (Duplicate of MART)
	INCLUDE "color/tilesets/gym.asm"         ; GYM           (Duplicate of DOJO)
	INCLUDE "color/tilesets/house.asm"       ; HOUSE
	INCLUDE "color/tilesets/gate.asm"        ; FOREST_GATE   (Duplicate of GATE and MUSEUM)
	INCLUDE "color/tilesets/gate.asm"        ; MUSEUM        (Duplicate of GATE and FOREST_GATE)
	INCLUDE "color/tilesets/underground.asm" ; UNDERGROUND
	INCLUDE "color/tilesets/gate.asm"        ; GATE          (Duplicate of FOREST_GATE and MUSEUM)
	INCLUDE "color/tilesets/ship.asm"        ; SHIP
	INCLUDE "color/tilesets/ship_port.asm"   ; SHIP_PORT
	INCLUDE "color/tilesets/cemetery.asm"    ; CEMETERY
	INCLUDE "color/tilesets/interior.asm"    ; INTERIOR
	INCLUDE "color/tilesets/cavern.asm"      ; CAVERN
	INCLUDE "color/tilesets/lobby.asm"       ; LOBBY
	INCLUDE "color/tilesets/mansion.asm"     ; MANSION
	INCLUDE "color/tilesets/lab.asm"         ; LAB
	INCLUDE "color/tilesets/club.asm"        ; CLUB
	INCLUDE "color/tilesets/facility.asm"    ; FACILITY
	INCLUDE "color/tilesets/plateau.asm"     ; PLATEAU
