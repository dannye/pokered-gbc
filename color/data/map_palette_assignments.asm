; One byte for each tile in the tileset, up to $60 tiles max.
; Remaining tiles not reserved for the tileset ($a0 bytes) are set to 7 (text palette).
; Refer to MapPaletteSets for clarification on specific colors
; These use the pokecrystal macro for tileset palettes
; Also, this repo can use Polished Map's "Priority Colors" already
; In the event of Duplicate tilesets, the asm files are named to match the png files
MapPaletteAssignments:
	table_width 2, MapPaletteAssignments
	dw OverworldPalMap   ; OVERWORLD
	dw RedsHouse1PalMap  ; REDS_HOUSE_1
	dw MartPalMap        ; MART
	dw ForestPalMap      ; FOREST
	dw RedsHouse2PalMap  ; REDS_HOUSE_2
	dw DojoPalMap        ; DOJO
	dw PokecenterPalMap  ; POKECENTER
	dw GymPalMap         ; GYM
	dw HousePalMap       ; HOUSE
	dw ForestGatePalMap  ; FOREST_GATE
	dw MuseumPalMap      ; MUSEUM
	dw UndergroundPalMap ; UNDERGROUND
	dw GatePalMap        ; GATE
	dw ShipPalMap        ; SHIP
	dw ShipPortPalMap    ; SHIP_PORT
	dw CemeteryPalMap    ; CEMETERY
	dw InteriorPalMap    ; INTERIOR
	dw CavernPalMap      ; CAVERN
	dw LobbyPalMap       ; LOBBY
	dw MansionPalMap     ; MANSION
	dw LabPalMap         ; LAB
	dw ClubPalMap        ; CLUB
	dw FacilityPalMap    ; FACILITY
	dw PlateauPalMap     ; PLATEAU
	assert_table_length NUM_TILESETS

OverworldPalMap:
	INCLUDE "color/tilesets/overworld.asm"

RedsHouse1PalMap:
RedsHouse2PalMap:
	INCLUDE "color/tilesets/reds_house.asm"

MartPalMap:
PokecenterPalMap:
	INCLUDE "color/tilesets/pokecenter.asm"

ForestPalMap:
	INCLUDE "color/tilesets/forest.asm"

DojoPalMap:
GymPalMap:
	INCLUDE "color/tilesets/gym.asm"

HousePalMap:
	INCLUDE "color/tilesets/house.asm"

GatePalMap:
ForestGatePalMap:
MuseumPalMap:
	INCLUDE "color/tilesets/gate.asm"

UndergroundPalMap:
	INCLUDE "color/tilesets/underground.asm"

ShipPalMap:
	INCLUDE "color/tilesets/ship.asm"

ShipPortPalMap:
	INCLUDE "color/tilesets/ship_port.asm"

CemeteryPalMap:
	INCLUDE "color/tilesets/cemetery.asm"

InteriorPalMap:
	INCLUDE "color/tilesets/interior.asm"

CavernPalMap:
	INCLUDE "color/tilesets/cavern.asm"

LobbyPalMap:
	INCLUDE "color/tilesets/lobby.asm"

MansionPalMap:
	INCLUDE "color/tilesets/mansion.asm"

LabPalMap:
	INCLUDE "color/tilesets/lab.asm"

ClubPalMap:
	INCLUDE "color/tilesets/club.asm"

FacilityPalMap:
	INCLUDE "color/tilesets/facility.asm"

PlateauPalMap:
	INCLUDE "color/tilesets/plateau.asm"
