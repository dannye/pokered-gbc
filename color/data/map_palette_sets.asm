; 8 bytes per tileset for 8 palettes, which are taken from MapPalettes.
MapPaletteSets:
	table_width 2, MapPaletteSets
	dw OverworldPalSet   ; OVERWORLD
	dw RedsHouse1PalSet  ; REDS_HOUSE_1
	dw MartPalSet        ; MART
	dw ForestPalSet      ; FOREST
	dw RedsHouse2PalSet  ; REDS_HOUSE_2
	dw DojoPalSet        ; DOJO
	dw PokecenterPalSet  ; POKECENTER
	dw GymPalSet         ; GYM
	dw HousePalSet       ; HOUSE
	dw ForestGatePalSet  ; FOREST_GATE
	dw MuseumPalSet      ; MUSEUM
	dw UndergroundPalSet ; UNDERGROUND
	dw GatePalSet        ; GATE
	dw ShipPalSet        ; SHIP
	dw ShipPortPalSet    ; SHIP_PORT
	dw CemeteryPalSet    ; CEMETERY
	dw InteriorPalSet    ; INTERIOR
	dw CavernPalSet      ; CAVERN
	dw LobbyPalSet       ; LOBBY
	dw MansionPalSet     ; MANSION
	dw LabPalSet         ; LAB
	dw ClubPalSet        ; CLUB
	dw FacilityPalSet    ; FACILITY
	dw PlateauPalSet     ; PLATEAU
	assert_table_length NUM_TILESETS

OverworldPalSet:
PlateauPalSet:
	db OUTDOOR_GRAY
	db OUTDOOR_RED
	db OUTDOOR_GREEN
	db OUTDOOR_BLUE
	db OUTDOOR_YELLOW
	db OUTDOOR_BROWN
	db OUTDOOR_ROOF
	db CRYS_TEXTBOX

RedsHouse1PalSet:
RedsHouse2PalSet:
DojoPalSet:
GymPalSet:
HousePalSet:
ForestGatePalSet:
UndergroundPalSet:
ShipPalSet:
ShipPortPalSet:
ClubPalSet:
FacilityPalSet:
	db INDOOR_GRAY
	db INDOOR_RED
	db INDOOR_GREEN
	db INDOOR_BLUE
	db INDOOR_YELLOW
	db INDOOR_BROWN
	db INDOOR_LIGHT_BLUE
	db CRYS_TEXTBOX

MartPalSet:
InteriorPalSet:
LobbyPalSet:
MansionPalSet:
LabPalSet:
	db INDOOR_GRAY
	db INDOOR_RED
	db INDOOR_GREEN
	db INDOOR_BLUE
	db INDOOR_YELLOW
	db INDOOR_BROWN
	db INDOOR_LIGHT_BLUE
	db PC_POKEBALL_PAL

ForestPalSet:
	db OUTDOOR_GRAY
	db FOREST_ROCKS
	db OUTDOOR_GREEN
	db OUTDOOR_BLUE
	db OUTDOOR_YELLOW
	db OUTDOOR_BROWN
	db FOREST_TREES
	db CRYS_TEXTBOX

PokecenterPalSet:
	db INDOOR_GRAY
	db INDOOR_RED
	db INDOOR_GREEN
	db INDOOR_BLUE
	db BENCH_GUY_PAL
	db INDOOR_BROWN
	db INDOOR_LIGHT_BLUE
	db PC_POKEBALL_PAL

MuseumPalSet:
GatePalSet:
	db INDOOR_GRAY
	db INDOOR_RED
	db INDOOR_GREEN
	db INDOOR_BLUE
	db INDOOR_YELLOW
	db INDOOR_BROWN
	db INDOOR_LIGHT_BLUE
	db ALT_TEXTBOX_PAL ; Uses variant of textbox palette for skeleton pokemon and Articuno binoculars

CemeteryPalSet:
	db INDOOR_GRAY
	db INDOOR_RED
	db INDOOR_GREEN
	db INDOOR_BLUE
	db INDOOR_YELLOW
	db INDOOR_BROWN
	db INDOOR_PURPLE
	db CRYS_TEXTBOX

CavernPalSet:
	db CAVE_GRAY
	db CAVE_RED
	db CAVE_GREEN
	db CAVE_BLUE
	db CAVE_YELLOW
	db CAVE_BROWN
	db CAVE_LIGHT_BLUE
	db CRYS_TEXTBOX
