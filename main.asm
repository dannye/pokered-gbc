INCLUDE "constants.asm"


SECTION "bank1", ROMX

INCLUDE "data/sprites/facings.asm"
INCLUDE "engine/events/black_out.asm"
INCLUDE "data/pokemon/mew.asm"
INCLUDE "engine/battle/safari_zone.asm"
INCLUDE "engine/movie/title.asm"
INCLUDE "engine/pokemon/load_mon_data.asm"
INCLUDE "data/items/prices.asm"
INCLUDE "data/items/names.asm"
INCLUDE "data/text/unused_names.asm"
INCLUDE "engine/gfx/sprite_oam.asm"
INCLUDE "engine/gfx/oam_dma.asm"
INCLUDE "engine/link/print_waiting_text.asm"
INCLUDE "engine/overworld/sprite_collisions.asm"
INCLUDE "engine/debug/debug_menu.asm"
INCLUDE "engine/events/pick_up_item.asm"
INCLUDE "engine/overworld/movement.asm"
INCLUDE "engine/link/cable_club.asm"
INCLUDE "engine/menus/main_menu.asm"
INCLUDE "engine/movie/oak_speech/oak_speech.asm"
INCLUDE "engine/overworld/special_warps.asm"
INCLUDE "engine/debug/debug_party.asm"
INCLUDE "engine/menus/naming_screen.asm"
INCLUDE "engine/movie/oak_speech/oak_speech2.asm"
INCLUDE "engine/items/subtract_paid_money.asm"
INCLUDE "engine/menus/swap_items.asm"
INCLUDE "engine/events/pokemart.asm"
INCLUDE "engine/pokemon/learn_move.asm"
INCLUDE "engine/events/pokecenter.asm"
INCLUDE "engine/events/set_blackout_map.asm"
INCLUDE "engine/menus/display_text_id_init.asm"
INCLUDE "engine/menus/draw_start_menu.asm"
INCLUDE "engine/link/cable_club_npc.asm"
INCLUDE "engine/menus/text_box.asm"
INCLUDE "engine/battle/move_effects/drain_hp.asm"
INCLUDE "engine/menus/players_pc.asm"
INCLUDE "engine/pokemon/remove_mon.asm"
INCLUDE "engine/events/display_pokedex.asm"


; Hooks for color hack
INCLUDE "color/cable_club.asm"
INCLUDE "color/oak_intro.asm"
IF GEN_2_GRAPHICS
INCLUDE "color/load_hp_and_exp_bar.asm"
ENDC


SECTION "bank3", ROMX

INCLUDE "engine/joypad.asm"
INCLUDE "data/maps/songs.asm"
INCLUDE "data/maps/map_header_banks.asm"
INCLUDE "engine/overworld/clear_variables.asm"
INCLUDE "engine/overworld/player_state.asm"
INCLUDE "engine/events/poison.asm"
INCLUDE "engine/overworld/tilesets.asm"
INCLUDE "engine/overworld/daycare_exp.asm"
INCLUDE "data/maps/hide_show_data.asm"
INCLUDE "engine/overworld/field_move_messages.asm"
INCLUDE "engine/items/inventory.asm"
INCLUDE "engine/overworld/wild_mons.asm"
INCLUDE "engine/items/item_effects.asm"
INCLUDE "engine/menus/draw_badges.asm"
INCLUDE "engine/overworld/update_map.asm"
INCLUDE "engine/overworld/cut.asm"
INCLUDE "engine/overworld/missable_objects.asm"
INCLUDE "engine/overworld/push_boulder.asm"
INCLUDE "engine/pokemon/add_mon.asm"
INCLUDE "engine/flag_action.asm"
INCLUDE "engine/events/heal_party.asm"
INCLUDE "engine/math/bcd.asm"
INCLUDE "engine/movie/oak_speech/init_player_data.asm"
INCLUDE "engine/items/get_bag_item_quantity.asm"
INCLUDE "engine/overworld/pathfinding.asm"
INCLUDE "engine/gfx/hp_bar.asm"
INCLUDE "engine/events/hidden_objects/bookshelves.asm"
INCLUDE "engine/events/hidden_objects/indigo_plateau_statues.asm"
INCLUDE "engine/events/hidden_objects/book_or_sculpture.asm"
INCLUDE "engine/events/hidden_objects/elevator.asm"
INCLUDE "engine/events/hidden_objects/town_map.asm"
INCLUDE "engine/events/hidden_objects/pokemon_stuff.asm"

INCLUDE "color/update_hp_bar.asm"


SECTION "Font Graphics", ROMX

INCLUDE "gfx/font.asm"


SECTION "Battle Engine 1", ROMX

INCLUDE "engine/overworld/is_player_just_outside_map.asm"
INCLUDE "engine/pokemon/status_screen.asm"
INCLUDE "engine/menus/party_menu.asm"
INCLUDE "gfx/player.asm"
INCLUDE "engine/overworld/turn_sprite.asm"
INCLUDE "engine/menus/start_sub_menus.asm"
INCLUDE "engine/items/tms.asm"
INCLUDE "engine/battle/end_of_battle.asm"
INCLUDE "engine/battle/wild_encounters.asm"
INCLUDE "engine/battle/move_effects/recoil.asm"
INCLUDE "engine/battle/move_effects/conversion.asm"
INCLUDE "engine/battle/move_effects/haze.asm"
INCLUDE "engine/battle/get_trainer_name.asm"
INCLUDE "engine/math/random.asm"

INCLUDE "color/status_screen.asm"

IF GEN_2_GRAPHICS
EXPBarGraphics:  INCBIN "gfx/gs/exp_bar.2bpp"
EXPBarGraphicsEnd:
ENDC


SECTION "Battle Engine 2", ROMX

INCLUDE "engine/gfx/load_pokedex_tiles.asm"
INCLUDE "engine/overworld/map_sprites.asm"
INCLUDE "engine/overworld/emotion_bubbles.asm"
INCLUDE "engine/events/evolve_trade.asm"
INCLUDE "engine/battle/move_effects/substitute.asm"
INCLUDE "engine/menus/pc.asm"


SECTION "Play Time", ROMX

INCLUDE "engine/play_time.asm"


SECTION "Doors and Ledges", ROMX

INCLUDE "engine/overworld/auto_movement.asm"
INCLUDE "engine/overworld/doors.asm"
INCLUDE "engine/overworld/ledges.asm"


SECTION "Pokémon Names", ROMX

INCLUDE "data/pokemon/names.asm"
INCLUDE "engine/movie/oak_speech/clear_save.asm"
INCLUDE "engine/events/elevator.asm"


SECTION "Hidden Objects 1", ROMX

INCLUDE "engine/menus/oaks_pc.asm"
INCLUDE "engine/events/hidden_objects/new_bike.asm"
INCLUDE "engine/events/hidden_objects/oaks_lab_posters.asm"
INCLUDE "engine/events/hidden_objects/safari_game.asm"
INCLUDE "engine/events/hidden_objects/cinnabar_gym_quiz.asm"
INCLUDE "engine/events/hidden_objects/magazines.asm"
INCLUDE "engine/events/hidden_objects/bills_house_pc.asm"
INCLUDE "engine/events/hidden_objects/oaks_lab_email.asm"


SECTION "Bill's PC", ROMX

INCLUDE "engine/pokemon/bills_pc.asm"


SECTION "Battle Engine 3", ROMX

INCLUDE "engine/battle/print_type.asm"
INCLUDE "engine/battle/save_trainer_name.asm"
INCLUDE "engine/battle/move_effects/focus_energy.asm"


SECTION "Battle Engine 4", ROMX

INCLUDE "engine/battle/move_effects/leech_seed.asm"


SECTION "Battle Engine 5", ROMX

INCLUDE "engine/battle/display_effectiveness.asm"
INCLUDE "gfx/trainer_card.asm"
INCLUDE "engine/items/tmhm.asm"
INCLUDE "engine/battle/scale_sprites.asm"
INCLUDE "engine/battle/move_effects/pay_day.asm"
INCLUDE "engine/slots/game_corner_slots2.asm"


SECTION "Battle Engine 6", ROMX

INCLUDE "engine/battle/move_effects/mist.asm"
INCLUDE "engine/battle/move_effects/one_hit_ko.asm"


SECTION "Slot Machines", ROMX

INCLUDE "engine/movie/title2.asm"
INCLUDE "engine/battle/link_battle_versus_text.asm"
INCLUDE "engine/slots/slot_machine.asm"
INCLUDE "engine/events/pewter_guys.asm"
INCLUDE "engine/math/multiply_divide.asm"
INCLUDE "engine/slots/game_corner_slots.asm"


SECTION "Battle Engine 7", ROMX

INCLUDE "data/moves/moves.asm"
INCLUDE "data/pokemon/base_stats.asm"
INCLUDE "data/pokemon/cries.asm"
INCLUDE "engine/battle/unused_stats_functions.asm"
INCLUDE "engine/battle/scroll_draw_trainer_pic.asm"
INCLUDE "engine/battle/trainer_ai.asm"
INCLUDE "engine/battle/draw_hud_pokeball_gfx.asm"
INCLUDE "gfx/trade.asm"
INCLUDE "engine/pokemon/evos_moves.asm"
INCLUDE "engine/battle/move_effects/heal.asm"
INCLUDE "engine/battle/move_effects/transform.asm"
INCLUDE "engine/battle/move_effects/reflect_light_screen.asm"

INCLUDE "color/draw_hud_pokeball_gfx.asm"


SECTION "Battle Core", ROMX

INCLUDE "engine/battle/core.asm"
;INCLUDE "engine/battle/effects.asm"


SECTION "bank10", ROMX

INCLUDE "engine/menus/pokedex.asm"
INCLUDE "engine/movie/trade.asm"
INCLUDE "engine/movie/intro.asm"
INCLUDE "engine/movie/trade2.asm"

; Hooks for color hack
INCLUDE "color/trade.asm"


SECTION "Pokédex Rating", ROMX

INCLUDE "engine/events/pokedex_rating.asm"


SECTION "Hidden Objects Core", ROMX

INCLUDE "engine/overworld/hidden_objects.asm"


SECTION "Screen Effects", ROMX

INCLUDE "engine/gfx/screen_effects.asm"


SECTION "Predefs", ROMX

INCLUDE "engine/events/give_pokemon.asm"
INCLUDE "engine/predefs.asm"


SECTION "Battle Engine 8", ROMX

INCLUDE "engine/battle/init_battle_variables.asm"
INCLUDE "engine/battle/move_effects/paralyze.asm"


SECTION "Hidden Objects 2", ROMX

INCLUDE "engine/events/card_key.asm"
INCLUDE "engine/events/prize_menu.asm"
INCLUDE "engine/events/hidden_objects/school_notebooks.asm"
INCLUDE "engine/events/hidden_objects/fighting_dojo.asm"
INCLUDE "engine/events/hidden_objects/indigo_plateau_hq.asm"


SECTION "Battle Engine 9", ROMX

INCLUDE "engine/battle/experience.asm"


SECTION "Diploma", ROMX

INCLUDE "engine/events/diploma.asm"


SECTION "Trainer Sight", ROMX

INCLUDE "engine/overworld/trainer_sight.asm"

IF GEN_2_GRAPHICS
INCLUDE "color/exp_bar.asm"
ENDC


SECTION "Battle Engine 10", ROMX

INCLUDE "engine/battle/common_text.asm"
INCLUDE "engine/pokemon/experience.asm"
INCLUDE "engine/events/oaks_aide.asm"


SECTION "Saffron Guards", ROMX

INCLUDE "engine/events/saffron_guards.asm"


SECTION "Starter Dex", ROMX

INCLUDE "engine/events/starter_dex.asm"


SECTION "Hidden Objects 3", ROMX

INCLUDE "engine/pokemon/set_types.asm"
INCLUDE "engine/events/hidden_objects/reds_room.asm"
INCLUDE "engine/events/hidden_objects/route_15_binoculars.asm"
INCLUDE "engine/events/hidden_objects/museum_fossils.asm"
INCLUDE "engine/events/hidden_objects/school_blackboard.asm"
INCLUDE "engine/events/hidden_objects/vermilion_gym_trash.asm"


SECTION "Cinnabar Lab Fossils", ROMX

INCLUDE "engine/events/cinnabar_lab.asm"


SECTION "Hidden Objects 4", ROMX

INCLUDE "engine/events/hidden_objects/gym_statues.asm"
INCLUDE "engine/events/hidden_objects/bench_guys.asm"
INCLUDE "engine/events/hidden_objects/blues_room.asm"
INCLUDE "engine/events/hidden_objects/pokecenter_pc.asm"


SECTION "Battle Engine 11", ROMX

INCLUDE "engine/battle/decrement_pp.asm"
INCLUDE "gfx/version.asm"


SECTION "bank1C", ROMX

INCLUDE "engine/movie/splash.asm"
INCLUDE "engine/movie/hall_of_fame.asm"
INCLUDE "engine/overworld/healing_machine.asm"
INCLUDE "engine/overworld/player_animations.asm"
INCLUDE "engine/battle/ghost_marowak_anim.asm"
INCLUDE "engine/battle/battle_transitions.asm"
INCLUDE "engine/items/town_map.asm"
INCLUDE "engine/gfx/mon_icons.asm"
INCLUDE "engine/events/in_game_trades.asm"
INCLUDE "engine/gfx/palettes.asm"

SECTION "Engine Save", ROMX

INCLUDE "engine/menus/save.asm"
 
BlackTile:
	REPT 16
	db $ff
	ENDR
BlackTileEnd:

INCLUDE "color/ghost_marowak_anim.asm"
INCLUDE "color/color.asm"


SECTION "Itemfinder 1", ROMX

INCLUDE "engine/movie/credits.asm"
INCLUDE "engine/pokemon/status_ailments.asm"
INCLUDE "engine/items/itemfinder.asm"


SECTION "Vending Machine", ROMX

INCLUDE "engine/events/vending_machine.asm"


SECTION "Itemfinder 2", ROMX

INCLUDE "engine/menus/league_pc.asm"
INCLUDE "engine/events/hidden_items.asm"


SECTION "bank1E", ROMX

INCLUDE "engine/battle/animations.asm"
INCLUDE "engine/overworld/cut2.asm"
INCLUDE "engine/overworld/dust_smoke.asm"
INCLUDE "gfx/fishing.asm"
INCLUDE "data/moves/animations.asm"
INCLUDE "data/battle_anims/subanimations.asm"
INCLUDE "data/battle_anims/frame_blocks.asm"
INCLUDE "engine/movie/evolution.asm"
INCLUDE "engine/overworld/elevator.asm"
INCLUDE "engine/items/tm_prices.asm"

INCLUDE "color/animations.asm"

; Inserted pokemon images go here

IF GEN_2_GRAPHICS
SECTION "bank32", ROMX

GrowlithePicFront::   INCBIN "gfx/pokemon/gsfront/growlithe.pic"
GrowlithePicBack::    INCBIN "gfx/pokemon/gsback/growlitheb.pic"
OnixPicFront::        INCBIN "gfx/pokemon/gsfront/onix.pic"
OnixPicBack::         INCBIN "gfx/pokemon/gsback/onixb.pic"
FearowPicFront::      INCBIN "gfx/pokemon/gsfront/fearow.pic"
FearowPicBack::       INCBIN "gfx/pokemon/gsback/fearowb.pic"
PidgeyPicFront::      INCBIN "gfx/pokemon/gsfront/pidgey.pic"
PidgeyPicBack::       INCBIN "gfx/pokemon/gsback/pidgeyb.pic"
SlowpokePicFront::    INCBIN "gfx/pokemon/gsfront/slowpoke.pic"
SlowpokePicBack::     INCBIN "gfx/pokemon/gsback/slowpokeb.pic"
KadabraPicFront::     INCBIN "gfx/pokemon/gsfront/kadabra.pic"
KadabraPicBack::      INCBIN "gfx/pokemon/gsback/kadabrab.pic"
GravelerPicFront::    INCBIN "gfx/pokemon/gsfront/graveler.pic"
GravelerPicBack::     INCBIN "gfx/pokemon/gsback/gravelerb.pic"
ChanseyPicFront::     INCBIN "gfx/pokemon/gsfront/chansey.pic"
ChanseyPicBack::      INCBIN "gfx/pokemon/gsback/chanseyb.pic"
MachokePicFront::     INCBIN "gfx/pokemon/gsfront/machoke.pic"
MachokePicBack::      INCBIN "gfx/pokemon/gsback/machokeb.pic"
MrMimePicFront::      INCBIN "gfx/pokemon/gsfront/mr.mime.pic"
MrMimePicBack::       INCBIN "gfx/pokemon/gsback/mr.mimeb.pic"
HitmonleePicFront::   INCBIN "gfx/pokemon/gsfront/hitmonlee.pic"
HitmonleePicBack::    INCBIN "gfx/pokemon/gsback/hitmonleeb.pic"
HitmonchanPicFront::  INCBIN "gfx/pokemon/gsfront/hitmonchan.pic"
HitmonchanPicBack::   INCBIN "gfx/pokemon/gsback/hitmonchanb.pic"
ArbokPicFront::       INCBIN "gfx/pokemon/gsfront/arbok.pic"
ArbokPicBack::        INCBIN "gfx/pokemon/gsback/arbokb.pic"
ParasectPicFront::    INCBIN "gfx/pokemon/gsfront/parasect.pic"
ParasectPicBack::     INCBIN "gfx/pokemon/gsback/parasectb.pic"
PsyduckPicFront::     INCBIN "gfx/pokemon/gsfront/psyduck.pic"
PsyduckPicBack::      INCBIN "gfx/pokemon/gsback/psyduckb.pic"
DrowzeePicFront::     INCBIN "gfx/pokemon/gsfront/drowzee.pic"
DrowzeePicBack::      INCBIN "gfx/pokemon/gsback/drowzeeb.pic"
GolemPicFront::       INCBIN "gfx/pokemon/gsfront/golem.pic"
GolemPicBack::        INCBIN "gfx/pokemon/gsback/golemb.pic"
MagmarPicFront::      INCBIN "gfx/pokemon/gsfront/magmar.pic"
MagmarPicBack::       INCBIN "gfx/pokemon/gsback/magmarb.pic"
ElectabuzzPicFront::  INCBIN "gfx/pokemon/gsfront/electabuzz.pic"
ElectabuzzPicBack::   INCBIN "gfx/pokemon/gsback/electabuzzb.pic"
MagnetonPicFront::    INCBIN "gfx/pokemon/gsfront/magneton.pic"
MagnetonPicBack::     INCBIN "gfx/pokemon/gsback/magnetonb.pic"
KoffingPicFront::     INCBIN "gfx/pokemon/gsfront/koffing.pic"
KoffingPicBack::      INCBIN "gfx/pokemon/gsback/koffingb.pic"
MankeyPicFront::      INCBIN "gfx/pokemon/gsfront/mankey.pic"
MankeyPicBack::       INCBIN "gfx/pokemon/gsback/mankeyb.pic"
SeelPicFront::        INCBIN "gfx/pokemon/gsfront/seel.pic"
SeelPicBack::         INCBIN "gfx/pokemon/gsback/seelb.pic"
DiglettPicFront::     INCBIN "gfx/pokemon/gsfront/diglett.pic"
DiglettPicBack::      INCBIN "gfx/pokemon/gsback/diglettb.pic"
TaurosPicFront::      INCBIN "gfx/pokemon/gsfront/tauros.pic"
TaurosPicBack::       INCBIN "gfx/pokemon/gsback/taurosb.pic"


SECTION "bank33", ROMX


RhydonPicFront::      INCBIN "gfx/pokemon/gsfront/rhydon.pic"
RhydonPicBack::       INCBIN "gfx/pokemon/gsback/rhydonb.pic"
KangaskhanPicFront::  INCBIN "gfx/pokemon/gsfront/kangaskhan.pic"
KangaskhanPicBack::   INCBIN "gfx/pokemon/gsback/kangaskhanb.pic"
NidoranMPicFront::    INCBIN "gfx/pokemon/gsfront/nidoranm.pic"
NidoranMPicBack::     INCBIN "gfx/pokemon/gsback/nidoranmb.pic"
ClefairyPicFront::    INCBIN "gfx/pokemon/gsfront/clefairy.pic"
ClefairyPicBack::     INCBIN "gfx/pokemon/gsback/clefairyb.pic"
SpearowPicFront::     INCBIN "gfx/pokemon/gsfront/spearow.pic"
SpearowPicBack::      INCBIN "gfx/pokemon/gsback/spearowb.pic"
VoltorbPicFront::     INCBIN "gfx/pokemon/gsfront/voltorb.pic"
VoltorbPicBack::      INCBIN "gfx/pokemon/gsback/voltorbb.pic"
NidokingPicFront::    INCBIN "gfx/pokemon/gsfront/nidoking.pic"
NidokingPicBack::     INCBIN "gfx/pokemon/gsback/nidokingb.pic"
SlowbroPicFront::     INCBIN "gfx/pokemon/gsfront/slowbro.pic"
SlowbroPicBack::      INCBIN "gfx/pokemon/gsback/slowbrob.pic"
IvysaurPicFront::     INCBIN "gfx/pokemon/gsfront/ivysaur.pic"
IvysaurPicBack::      INCBIN "gfx/pokemon/gsback/ivysaurb.pic"
ExeggutorPicFront::   INCBIN "gfx/pokemon/gsfront/exeggutor.pic"
ExeggutorPicBack::    INCBIN "gfx/pokemon/gsback/exeggutorb.pic"
LickitungPicFront::   INCBIN "gfx/pokemon/gsfront/lickitung.pic"
LickitungPicBack::    INCBIN "gfx/pokemon/gsback/lickitungb.pic"
ExeggcutePicFront::   INCBIN "gfx/pokemon/gsfront/exeggcute.pic"
ExeggcutePicBack::    INCBIN "gfx/pokemon/gsback/exeggcuteb.pic"
GrimerPicFront::      INCBIN "gfx/pokemon/gsfront/grimer.pic"
GrimerPicBack::       INCBIN "gfx/pokemon/gsback/grimerb.pic"
GengarPicFront::      INCBIN "gfx/pokemon/gsfront/gengar.pic"
GengarPicBack::       INCBIN "gfx/pokemon/gsback/gengarb.pic"
NidoranFPicFront::    INCBIN "gfx/pokemon/gsfront/nidoranf.pic"
NidoranFPicBack::     INCBIN "gfx/pokemon/gsback/nidoranfb.pic"
NidoqueenPicFront::   INCBIN "gfx/pokemon/gsfront/nidoqueen.pic"
NidoqueenPicBack::    INCBIN "gfx/pokemon/gsback/nidoqueenb.pic"
CubonePicFront::      INCBIN "gfx/pokemon/gsfront/cubone.pic"
CubonePicBack::       INCBIN "gfx/pokemon/gsback/cuboneb.pic"
RhyhornPicFront::     INCBIN "gfx/pokemon/gsfront/rhyhorn.pic"
RhyhornPicBack::      INCBIN "gfx/pokemon/gsback/rhyhornb.pic"
LaprasPicFront::      INCBIN "gfx/pokemon/gsfront/lapras.pic"
LaprasPicBack::       INCBIN "gfx/pokemon/gsback/laprasb.pic"
ArcaninePicFront::    INCBIN "gfx/pokemon/gsfront/arcanine.pic"
ArcaninePicBack::     INCBIN "gfx/pokemon/gsback/arcanineb.pic"
GyaradosPicFront::    INCBIN "gfx/pokemon/gsfront/gyarados.pic"
GyaradosPicBack::     INCBIN "gfx/pokemon/gsback/gyaradosb.pic"
ShellderPicFront::    INCBIN "gfx/pokemon/gsfront/shellder.pic"
ShellderPicBack::     INCBIN "gfx/pokemon/gsback/shellderb.pic"


SECTION "bank34", ROMX


ArticunoPicFront::    INCBIN "gfx/pokemon/gsfront/articuno.pic"
ArticunoPicBack::     INCBIN "gfx/pokemon/gsback/articunob.pic"
ZapdosPicFront::      INCBIN "gfx/pokemon/gsfront/zapdos.pic"
ZapdosPicBack::       INCBIN "gfx/pokemon/gsback/zapdosb.pic"
DittoPicFront::       INCBIN "gfx/pokemon/gsfront/ditto.pic"
DittoPicBack::        INCBIN "gfx/pokemon/gsback/dittob.pic"
MeowthPicFront::      INCBIN "gfx/pokemon/gsfront/meowth.pic"
MeowthPicBack::       INCBIN "gfx/pokemon/gsback/meowthb.pic"
KrabbyPicFront::      INCBIN "gfx/pokemon/gsfront/krabby.pic"
KrabbyPicBack::       INCBIN "gfx/pokemon/gsback/krabbyb.pic"
VulpixPicFront::      INCBIN "gfx/pokemon/gsfront/vulpix.pic"
VulpixPicBack::       INCBIN "gfx/pokemon/gsback/vulpixb.pic"
NinetalesPicFront::   INCBIN "gfx/pokemon/gsfront/ninetales.pic"
NinetalesPicBack::    INCBIN "gfx/pokemon/gsback/ninetalesb.pic"
PikachuPicFront::     INCBIN "gfx/pokemon/gsfront/pikachu.pic"
PikachuPicBack::      INCBIN "gfx/pokemon/gsback/pikachub.pic"
RaichuPicFront::      INCBIN "gfx/pokemon/gsfront/raichu.pic"
RaichuPicBack::       INCBIN "gfx/pokemon/gsback/raichub.pic"
DratiniPicFront::     INCBIN "gfx/pokemon/gsfront/dratini.pic"
DratiniPicBack::      INCBIN "gfx/pokemon/gsback/dratinib.pic"
DragonairPicFront::   INCBIN "gfx/pokemon/gsfront/dragonair.pic"
DragonairPicBack::    INCBIN "gfx/pokemon/gsback/dragonairb.pic"
KabutoPicFront::      INCBIN "gfx/pokemon/gsfront/kabuto.pic"
KabutoPicBack::       INCBIN "gfx/pokemon/gsback/kabutob.pic"
KabutopsPicFront::    INCBIN "gfx/pokemon/gsfront/kabutops.pic"
KabutopsPicBack::     INCBIN "gfx/pokemon/gsback/kabutopsb.pic"
HorseaPicFront::      INCBIN "gfx/pokemon/gsfront/horsea.pic"
HorseaPicBack::       INCBIN "gfx/pokemon/gsback/horseab.pic"
SeadraPicFront::      INCBIN "gfx/pokemon/gsfront/seadra.pic"
SeadraPicBack::       INCBIN "gfx/pokemon/gsback/seadrab.pic"
SandshrewPicFront::   INCBIN "gfx/pokemon/gsfront/sandshrew.pic"
SandshrewPicBack::    INCBIN "gfx/pokemon/gsback/sandshrewb.pic"
SandslashPicFront::   INCBIN "gfx/pokemon/gsfront/sandslash.pic"
SandslashPicBack::    INCBIN "gfx/pokemon/gsback/sandslashb.pic"
OmanytePicFront::     INCBIN "gfx/pokemon/gsfront/omanyte.pic"
OmanytePicBack::      INCBIN "gfx/pokemon/gsback/omanyteb.pic"
OmastarPicFront::     INCBIN "gfx/pokemon/gsfront/omastar.pic"
OmastarPicBack::      INCBIN "gfx/pokemon/gsback/omastarb.pic"
JigglypuffPicFront::  INCBIN "gfx/pokemon/gsfront/jigglypuff.pic"
JigglypuffPicBack::   INCBIN "gfx/pokemon/gsback/jigglypuffb.pic"
WigglytuffPicFront::  INCBIN "gfx/pokemon/gsfront/wigglytuff.pic"
WigglytuffPicBack::   INCBIN "gfx/pokemon/gsback/wigglytuffb.pic"
EeveePicFront::       INCBIN "gfx/pokemon/gsfront/eevee.pic"
EeveePicBack::        INCBIN "gfx/pokemon/gsback/eeveeb.pic"
FlareonPicFront::     INCBIN "gfx/pokemon/gsfront/flareon.pic"
FlareonPicBack::      INCBIN "gfx/pokemon/gsback/flareonb.pic"


SECTION "bank35", ROMX


DodrioPicFront::      INCBIN "gfx/pokemon/gsfront/dodrio.pic"
DodrioPicBack::       INCBIN "gfx/pokemon/gsback/dodriob.pic"
PrimeapePicFront::    INCBIN "gfx/pokemon/gsfront/primeape.pic"
PrimeapePicBack::     INCBIN "gfx/pokemon/gsback/primeapeb.pic"
DugtrioPicFront::     INCBIN "gfx/pokemon/gsfront/dugtrio.pic"
DugtrioPicBack::      INCBIN "gfx/pokemon/gsback/dugtriob.pic"
VenomothPicFront::    INCBIN "gfx/pokemon/gsfront/venomoth.pic"
VenomothPicBack::     INCBIN "gfx/pokemon/gsback/venomothb.pic"
DewgongPicFront::     INCBIN "gfx/pokemon/gsfront/dewgong.pic"
DewgongPicBack::      INCBIN "gfx/pokemon/gsback/dewgongb.pic"
CaterpiePicFront::    INCBIN "gfx/pokemon/gsfront/caterpie.pic"
CaterpiePicBack::     INCBIN "gfx/pokemon/gsback/caterpieb.pic"
MetapodPicFront::     INCBIN "gfx/pokemon/gsfront/metapod.pic"
MetapodPicBack::      INCBIN "gfx/pokemon/gsback/metapodb.pic"
ButterfreePicFront::  INCBIN "gfx/pokemon/gsfront/butterfree.pic"
ButterfreePicBack::   INCBIN "gfx/pokemon/gsback/butterfreeb.pic"
MachampPicFront::     INCBIN "gfx/pokemon/gsfront/machamp.pic"
MachampPicBack::      INCBIN "gfx/pokemon/gsback/machampb.pic"
GolduckPicFront::     INCBIN "gfx/pokemon/gsfront/golduck.pic"
GolduckPicBack::      INCBIN "gfx/pokemon/gsback/golduckb.pic"
HypnoPicFront::       INCBIN "gfx/pokemon/gsfront/hypno.pic"
HypnoPicBack::        INCBIN "gfx/pokemon/gsback/hypnob.pic"
GolbatPicFront::      INCBIN "gfx/pokemon/gsfront/golbat.pic"
GolbatPicBack::       INCBIN "gfx/pokemon/gsback/golbatb.pic"
MewtwoPicFront::      INCBIN "gfx/pokemon/gsfront/mewtwo.pic"
MewtwoPicBack::       INCBIN "gfx/pokemon/gsback/mewtwob.pic"
SnorlaxPicFront::     INCBIN "gfx/pokemon/gsfront/snorlax.pic"
SnorlaxPicBack::      INCBIN "gfx/pokemon/gsback/snorlaxb.pic"
MagikarpPicFront::    INCBIN "gfx/pokemon/gsfront/magikarp.pic"
MagikarpPicBack::     INCBIN "gfx/pokemon/gsback/magikarpb.pic"
MukPicFront::         INCBIN "gfx/pokemon/gsfront/muk.pic"
MukPicBack::          INCBIN "gfx/pokemon/gsback/mukb.pic"
KinglerPicFront::     INCBIN "gfx/pokemon/gsfront/kingler.pic"
KinglerPicBack::      INCBIN "gfx/pokemon/gsback/kinglerb.pic"
CloysterPicFront::    INCBIN "gfx/pokemon/gsfront/cloyster.pic"
CloysterPicBack::     INCBIN "gfx/pokemon/gsback/cloysterb.pic"
ElectrodePicFront::   INCBIN "gfx/pokemon/gsfront/electrode.pic"
ElectrodePicBack::    INCBIN "gfx/pokemon/gsback/electrodeb.pic"
ClefablePicFront::    INCBIN "gfx/pokemon/gsfront/clefable.pic"
ClefablePicBack::     INCBIN "gfx/pokemon/gsback/clefableb.pic"
WeezingPicFront::     INCBIN "gfx/pokemon/gsfront/weezing.pic"
WeezingPicBack::      INCBIN "gfx/pokemon/gsback/weezingb.pic"
PersianPicFront::     INCBIN "gfx/pokemon/gsfront/persian.pic"
PersianPicBack::      INCBIN "gfx/pokemon/gsback/persianb.pic"



SECTION "bank36", ROMX


BulbasaurPicFront::   INCBIN "gfx/pokemon/gsfront/bulbasaur.pic"
BulbasaurPicBack::    INCBIN "gfx/pokemon/gsback/bulbasaurb.pic"
VenusaurPicFront::    INCBIN "gfx/pokemon/gsfront/venusaur.pic"
VenusaurPicBack::     INCBIN "gfx/pokemon/gsback/venusaurb.pic"
TentacruelPicFront::  INCBIN "gfx/pokemon/gsfront/tentacruel.pic"
TentacruelPicBack::   INCBIN "gfx/pokemon/gsback/tentacruelb.pic"
GoldeenPicFront::     INCBIN "gfx/pokemon/gsfront/goldeen.pic"
GoldeenPicBack::      INCBIN "gfx/pokemon/gsback/goldeenb.pic"
SeakingPicFront::     INCBIN "gfx/pokemon/gsfront/seaking.pic"
SeakingPicBack::      INCBIN "gfx/pokemon/gsback/seakingb.pic"
PonytaPicFront::      INCBIN "gfx/pokemon/gsfront/ponyta.pic"
RapidashPicFront::    INCBIN "gfx/pokemon/gsfront/rapidash.pic"
PonytaPicBack::       INCBIN "gfx/pokemon/gsback/ponytab.pic"
RapidashPicBack::     INCBIN "gfx/pokemon/gsback/rapidashb.pic"
RattataPicFront::     INCBIN "gfx/pokemon/gsfront/rattata.pic"
RattataPicBack::      INCBIN "gfx/pokemon/gsback/rattatab.pic"
RaticatePicFront::    INCBIN "gfx/pokemon/gsfront/raticate.pic"
RaticatePicBack::     INCBIN "gfx/pokemon/gsback/raticateb.pic"
NidorinoPicFront::    INCBIN "gfx/pokemon/gsfront/nidorino.pic"
NidorinoPicBack::     INCBIN "gfx/pokemon/gsback/nidorinob.pic"
NidorinaPicFront::    INCBIN "gfx/pokemon/gsfront/nidorina.pic"
NidorinaPicBack::     INCBIN "gfx/pokemon/gsback/nidorinab.pic"
GeodudePicFront::     INCBIN "gfx/pokemon/gsfront/geodude.pic"
GeodudePicBack::      INCBIN "gfx/pokemon/gsback/geodudeb.pic"
PorygonPicFront::     INCBIN "gfx/pokemon/gsfront/porygon.pic"
PorygonPicBack::      INCBIN "gfx/pokemon/gsback/porygonb.pic"
AerodactylPicFront::  INCBIN "gfx/pokemon/gsfront/aerodactyl.pic"
AerodactylPicBack::   INCBIN "gfx/pokemon/gsback/aerodactylb.pic"
MagnemitePicFront::   INCBIN "gfx/pokemon/gsfront/magnemite.pic"
MagnemitePicBack::    INCBIN "gfx/pokemon/gsback/magnemiteb.pic"
CharmanderPicFront::  INCBIN "gfx/pokemon/gsfront/charmander.pic"
CharmanderPicBack::   INCBIN "gfx/pokemon/gsback/charmanderb.pic"
SquirtlePicFront::    INCBIN "gfx/pokemon/gsfront/squirtle.pic"
SquirtlePicBack::     INCBIN "gfx/pokemon/gsback/squirtleb.pic"
CharmeleonPicFront::  INCBIN "gfx/pokemon/gsfront/charmeleon.pic"
CharmeleonPicBack::   INCBIN "gfx/pokemon/gsback/charmeleonb.pic"
WartortlePicFront::   INCBIN "gfx/pokemon/gsfront/wartortle.pic"
WartortlePicBack::    INCBIN "gfx/pokemon/gsback/wartortleb.pic"
CharizardPicFront::   INCBIN "gfx/pokemon/gsfront/charizard.pic"
CharizardPicBack::    INCBIN "gfx/pokemon/gsback/charizardb.pic"
FossilKabutopsPic::   INCBIN "gfx/pokemon/front/fossilkabutops.pic"
FossilAerodactylPic:: INCBIN "gfx/pokemon/front/fossilaerodactyl.pic"
GhostPic::            INCBIN "gfx/battle/ghost.pic"
OddishPicFront::      INCBIN "gfx/pokemon/gsfront/oddish.pic"
OddishPicBack::       INCBIN "gfx/pokemon/gsback/oddishb.pic"
GloomPicFront::       INCBIN "gfx/pokemon/gsfront/gloom.pic"
GloomPicBack::        INCBIN "gfx/pokemon/gsback/gloomb.pic"


SECTION "bank37", ROMX


BellsproutPicFront::  INCBIN "gfx/pokemon/gsfront/bellsprout.pic"
BellsproutPicBack::   INCBIN "gfx/pokemon/gsback/bellsproutb.pic"
WeepinbellPicFront::  INCBIN "gfx/pokemon/gsfront/weepinbell.pic"
WeepinbellPicBack::   INCBIN "gfx/pokemon/gsback/weepinbellb.pic"
VictreebelPicFront::  INCBIN "gfx/pokemon/gsfront/victreebel.pic"
VictreebelPicBack::   INCBIN "gfx/pokemon/gsback/victreebelb.pic"

MewPicFront::         INCBIN "gfx/pokemon/gsfront/mew.pic"
MewPicBack::          INCBIN "gfx/pokemon/gsback/mewb.pic"

FarfetchdPicFront::   INCBIN "gfx/pokemon/gsfront/farfetchd.pic"
FarfetchdPicBack::    INCBIN "gfx/pokemon/gsback/farfetchdb.pic"
VenonatPicFront::     INCBIN "gfx/pokemon/gsfront/venonat.pic"
VenonatPicBack::      INCBIN "gfx/pokemon/gsback/venonatb.pic"
DragonitePicFront::   INCBIN "gfx/pokemon/gsfront/dragonite.pic"
DragonitePicBack::    INCBIN "gfx/pokemon/gsback/dragoniteb.pic"
DoduoPicFront::       INCBIN "gfx/pokemon/gsfront/doduo.pic"
DoduoPicBack::        INCBIN "gfx/pokemon/gsback/doduob.pic"
PoliwagPicFront::     INCBIN "gfx/pokemon/gsfront/poliwag.pic"
PoliwagPicBack::      INCBIN "gfx/pokemon/gsback/poliwagb.pic"
JynxPicFront::        INCBIN "gfx/pokemon/gsfront/jynx.pic"
JynxPicBack::         INCBIN "gfx/pokemon/gsback/jynxb.pic"
MarowakPicFront::     INCBIN "gfx/pokemon/gsfront/marowak.pic"
MarowakPicBack::      INCBIN "gfx/pokemon/gsback/marowakb.pic"
ENDC

IF !GEN_2_GRAPHICS
SECTION "bank32", ROMX

GrowlithePicFront::   INCBIN "gfx/pokemon/front/growlithe.pic"
GrowlithePicBack::    INCBIN "gfx/pokemon/back/growlitheb.pic"
OnixPicFront::        INCBIN "gfx/pokemon/front/onix.pic"
OnixPicBack::         INCBIN "gfx/pokemon/back/onixb.pic"
FearowPicFront::      INCBIN "gfx/pokemon/front/fearow.pic"
FearowPicBack::       INCBIN "gfx/pokemon/back/fearowb.pic"
PidgeyPicFront::      INCBIN "gfx/pokemon/front/pidgey.pic"
PidgeyPicBack::       INCBIN "gfx/pokemon/back/pidgeyb.pic"
SlowpokePicFront::    INCBIN "gfx/pokemon/front/slowpoke.pic"
SlowpokePicBack::     INCBIN "gfx/pokemon/back/slowpokeb.pic"
KadabraPicFront::     INCBIN "gfx/pokemon/front/kadabra.pic"
KadabraPicBack::      INCBIN "gfx/pokemon/back/kadabrab.pic"
GravelerPicFront::    INCBIN "gfx/pokemon/front/graveler.pic"
GravelerPicBack::     INCBIN "gfx/pokemon/back/gravelerb.pic"
ChanseyPicFront::     INCBIN "gfx/pokemon/front/chansey.pic"
ChanseyPicBack::      INCBIN "gfx/pokemon/back/chanseyb.pic"
MachokePicFront::     INCBIN "gfx/pokemon/front/machoke.pic"
MachokePicBack::      INCBIN "gfx/pokemon/back/machokeb.pic"
MrMimePicFront::      INCBIN "gfx/pokemon/front/mr.mime.pic"
MrMimePicBack::       INCBIN "gfx/pokemon/back/mr.mimeb.pic"
HitmonleePicFront::   INCBIN "gfx/pokemon/front/hitmonlee.pic"
HitmonleePicBack::    INCBIN "gfx/pokemon/back/hitmonleeb.pic"
HitmonchanPicFront::  INCBIN "gfx/pokemon/front/hitmonchan.pic"
HitmonchanPicBack::   INCBIN "gfx/pokemon/back/hitmonchanb.pic"
ArbokPicFront::       INCBIN "gfx/pokemon/front/arbok.pic"
ArbokPicBack::        INCBIN "gfx/pokemon/back/arbokb.pic"
ParasectPicFront::    INCBIN "gfx/pokemon/front/parasect.pic"
ParasectPicBack::     INCBIN "gfx/pokemon/back/parasectb.pic"
PsyduckPicFront::     INCBIN "gfx/pokemon/front/psyduck.pic"
PsyduckPicBack::      INCBIN "gfx/pokemon/back/psyduckb.pic"
DrowzeePicFront::     INCBIN "gfx/pokemon/front/drowzee.pic"
DrowzeePicBack::      INCBIN "gfx/pokemon/back/drowzeeb.pic"
GolemPicFront::       INCBIN "gfx/pokemon/front/golem.pic"
GolemPicBack::        INCBIN "gfx/pokemon/back/golemb.pic"
MagmarPicFront::      INCBIN "gfx/pokemon/front/magmar.pic"
MagmarPicBack::       INCBIN "gfx/pokemon/back/magmarb.pic"
ElectabuzzPicFront::  INCBIN "gfx/pokemon/front/electabuzz.pic"
ElectabuzzPicBack::   INCBIN "gfx/pokemon/back/electabuzzb.pic"
MagnetonPicFront::    INCBIN "gfx/pokemon/front/magneton.pic"
MagnetonPicBack::     INCBIN "gfx/pokemon/back/magnetonb.pic"
KoffingPicFront::     INCBIN "gfx/pokemon/front/koffing.pic"
KoffingPicBack::      INCBIN "gfx/pokemon/back/koffingb.pic"
MankeyPicFront::      INCBIN "gfx/pokemon/front/mankey.pic"
MankeyPicBack::       INCBIN "gfx/pokemon/back/mankeyb.pic"
SeelPicFront::        INCBIN "gfx/pokemon/front/seel.pic"
SeelPicBack::         INCBIN "gfx/pokemon/back/seelb.pic"
DiglettPicFront::     INCBIN "gfx/pokemon/front/diglett.pic"
DiglettPicBack::      INCBIN "gfx/pokemon/back/diglettb.pic"
TaurosPicFront::      INCBIN "gfx/pokemon/front/tauros.pic"
TaurosPicBack::       INCBIN "gfx/pokemon/back/taurosb.pic"


SECTION "bank33", ROMX


RhydonPicFront::      INCBIN "gfx/pokemon/front/rhydon.pic"
RhydonPicBack::       INCBIN "gfx/pokemon/back/rhydonb.pic"
KangaskhanPicFront::  INCBIN "gfx/pokemon/front/kangaskhan.pic"
KangaskhanPicBack::   INCBIN "gfx/pokemon/back/kangaskhanb.pic"
NidoranMPicFront::    INCBIN "gfx/pokemon/front/nidoranm.pic"
NidoranMPicBack::     INCBIN "gfx/pokemon/back/nidoranmb.pic"
ClefairyPicFront::    INCBIN "gfx/pokemon/front/clefairy.pic"
ClefairyPicBack::     INCBIN "gfx/pokemon/back/clefairyb.pic"
SpearowPicFront::     INCBIN "gfx/pokemon/front/spearow.pic"
SpearowPicBack::      INCBIN "gfx/pokemon/back/spearowb.pic"
VoltorbPicFront::     INCBIN "gfx/pokemon/front/voltorb.pic"
VoltorbPicBack::      INCBIN "gfx/pokemon/back/voltorbb.pic"
NidokingPicFront::    INCBIN "gfx/pokemon/front/nidoking.pic"
NidokingPicBack::     INCBIN "gfx/pokemon/back/nidokingb.pic"
SlowbroPicFront::     INCBIN "gfx/pokemon/front/slowbro.pic"
SlowbroPicBack::      INCBIN "gfx/pokemon/back/slowbrob.pic"
IvysaurPicFront::     INCBIN "gfx/pokemon/front/ivysaur.pic"
IvysaurPicBack::      INCBIN "gfx/pokemon/back/ivysaurb.pic"
ExeggutorPicFront::   INCBIN "gfx/pokemon/front/exeggutor.pic"
ExeggutorPicBack::    INCBIN "gfx/pokemon/back/exeggutorb.pic"
LickitungPicFront::   INCBIN "gfx/pokemon/front/lickitung.pic"
LickitungPicBack::    INCBIN "gfx/pokemon/back/lickitungb.pic"
ExeggcutePicFront::   INCBIN "gfx/pokemon/front/exeggcute.pic"
ExeggcutePicBack::    INCBIN "gfx/pokemon/back/exeggcuteb.pic"
GrimerPicFront::      INCBIN "gfx/pokemon/front/grimer.pic"
GrimerPicBack::       INCBIN "gfx/pokemon/back/grimerb.pic"
GengarPicFront::      INCBIN "gfx/pokemon/front/gengar.pic"
GengarPicBack::       INCBIN "gfx/pokemon/back/gengarb.pic"
NidoranFPicFront::    INCBIN "gfx/pokemon/front/nidoranf.pic"
NidoranFPicBack::     INCBIN "gfx/pokemon/back/nidoranfb.pic"
NidoqueenPicFront::   INCBIN "gfx/pokemon/front/nidoqueen.pic"
NidoqueenPicBack::    INCBIN "gfx/pokemon/back/nidoqueenb.pic"
CubonePicFront::      INCBIN "gfx/pokemon/front/cubone.pic"
CubonePicBack::       INCBIN "gfx/pokemon/back/cuboneb.pic"
RhyhornPicFront::     INCBIN "gfx/pokemon/front/rhyhorn.pic"
RhyhornPicBack::      INCBIN "gfx/pokemon/back/rhyhornb.pic"
LaprasPicFront::      INCBIN "gfx/pokemon/front/lapras.pic"
LaprasPicBack::       INCBIN "gfx/pokemon/back/laprasb.pic"
ArcaninePicFront::    INCBIN "gfx/pokemon/front/arcanine.pic"
ArcaninePicBack::     INCBIN "gfx/pokemon/back/arcanineb.pic"
GyaradosPicFront::    INCBIN "gfx/pokemon/front/gyarados.pic"
GyaradosPicBack::     INCBIN "gfx/pokemon/back/gyaradosb.pic"
ShellderPicFront::    INCBIN "gfx/pokemon/front/shellder.pic"
ShellderPicBack::     INCBIN "gfx/pokemon/back/shellderb.pic"


SECTION "bank34", ROMX


ArticunoPicFront::    INCBIN "gfx/pokemon/front/articuno.pic"
ArticunoPicBack::     INCBIN "gfx/pokemon/back/articunob.pic"
ZapdosPicFront::      INCBIN "gfx/pokemon/front/zapdos.pic"
ZapdosPicBack::       INCBIN "gfx/pokemon/back/zapdosb.pic"
DittoPicFront::       INCBIN "gfx/pokemon/front/ditto.pic"
DittoPicBack::        INCBIN "gfx/pokemon/back/dittob.pic"
MeowthPicFront::      INCBIN "gfx/pokemon/front/meowth.pic"
MeowthPicBack::       INCBIN "gfx/pokemon/back/meowthb.pic"
KrabbyPicFront::      INCBIN "gfx/pokemon/front/krabby.pic"
KrabbyPicBack::       INCBIN "gfx/pokemon/back/krabbyb.pic"
VulpixPicFront::      INCBIN "gfx/pokemon/front/vulpix.pic"
VulpixPicBack::       INCBIN "gfx/pokemon/back/vulpixb.pic"
NinetalesPicFront::   INCBIN "gfx/pokemon/front/ninetales.pic"
NinetalesPicBack::    INCBIN "gfx/pokemon/back/ninetalesb.pic"
PikachuPicFront::     INCBIN "gfx/pokemon/front/pikachu.pic"
PikachuPicBack::      INCBIN "gfx/pokemon/back/pikachub.pic"
RaichuPicFront::      INCBIN "gfx/pokemon/front/raichu.pic"
RaichuPicBack::       INCBIN "gfx/pokemon/back/raichub.pic"
DratiniPicFront::     INCBIN "gfx/pokemon/front/dratini.pic"
DratiniPicBack::      INCBIN "gfx/pokemon/back/dratinib.pic"
DragonairPicFront::   INCBIN "gfx/pokemon/front/dragonair.pic"
DragonairPicBack::    INCBIN "gfx/pokemon/back/dragonairb.pic"
KabutoPicFront::      INCBIN "gfx/pokemon/front/kabuto.pic"
KabutoPicBack::       INCBIN "gfx/pokemon/back/kabutob.pic"
KabutopsPicFront::    INCBIN "gfx/pokemon/front/kabutops.pic"
KabutopsPicBack::     INCBIN "gfx/pokemon/back/kabutopsb.pic"
HorseaPicFront::      INCBIN "gfx/pokemon/front/horsea.pic"
HorseaPicBack::       INCBIN "gfx/pokemon/back/horseab.pic"
SeadraPicFront::      INCBIN "gfx/pokemon/front/seadra.pic"
SeadraPicBack::       INCBIN "gfx/pokemon/back/seadrab.pic"
SandshrewPicFront::   INCBIN "gfx/pokemon/front/sandshrew.pic"
SandshrewPicBack::    INCBIN "gfx/pokemon/back/sandshrewb.pic"
SandslashPicFront::   INCBIN "gfx/pokemon/front/sandslash.pic"
SandslashPicBack::    INCBIN "gfx/pokemon/back/sandslashb.pic"
OmanytePicFront::     INCBIN "gfx/pokemon/front/omanyte.pic"
OmanytePicBack::      INCBIN "gfx/pokemon/back/omanyteb.pic"
OmastarPicFront::     INCBIN "gfx/pokemon/front/omastar.pic"
OmastarPicBack::      INCBIN "gfx/pokemon/back/omastarb.pic"
JigglypuffPicFront::  INCBIN "gfx/pokemon/front/jigglypuff.pic"
JigglypuffPicBack::   INCBIN "gfx/pokemon/back/jigglypuffb.pic"
WigglytuffPicFront::  INCBIN "gfx/pokemon/front/wigglytuff.pic"
WigglytuffPicBack::   INCBIN "gfx/pokemon/back/wigglytuffb.pic"
EeveePicFront::       INCBIN "gfx/pokemon/front/eevee.pic"
EeveePicBack::        INCBIN "gfx/pokemon/back/eeveeb.pic"
FlareonPicFront::     INCBIN "gfx/pokemon/front/flareon.pic"
FlareonPicBack::      INCBIN "gfx/pokemon/back/flareonb.pic"


SECTION "bank35", ROMX


DodrioPicFront::      INCBIN "gfx/pokemon/front/dodrio.pic"
DodrioPicBack::       INCBIN "gfx/pokemon/back/dodriob.pic"
PrimeapePicFront::    INCBIN "gfx/pokemon/front/primeape.pic"
PrimeapePicBack::     INCBIN "gfx/pokemon/back/primeapeb.pic"
DugtrioPicFront::     INCBIN "gfx/pokemon/front/dugtrio.pic"
DugtrioPicBack::      INCBIN "gfx/pokemon/back/dugtriob.pic"
VenomothPicFront::    INCBIN "gfx/pokemon/front/venomoth.pic"
VenomothPicBack::     INCBIN "gfx/pokemon/back/venomothb.pic"
DewgongPicFront::     INCBIN "gfx/pokemon/front/dewgong.pic"
DewgongPicBack::      INCBIN "gfx/pokemon/back/dewgongb.pic"
CaterpiePicFront::    INCBIN "gfx/pokemon/front/caterpie.pic"
CaterpiePicBack::     INCBIN "gfx/pokemon/back/caterpieb.pic"
MetapodPicFront::     INCBIN "gfx/pokemon/front/metapod.pic"
MetapodPicBack::      INCBIN "gfx/pokemon/back/metapodb.pic"
ButterfreePicFront::  INCBIN "gfx/pokemon/front/butterfree.pic"
ButterfreePicBack::   INCBIN "gfx/pokemon/back/butterfreeb.pic"
MachampPicFront::     INCBIN "gfx/pokemon/front/machamp.pic"
MachampPicBack::      INCBIN "gfx/pokemon/back/machampb.pic"
GolduckPicFront::     INCBIN "gfx/pokemon/front/golduck.pic"
GolduckPicBack::      INCBIN "gfx/pokemon/back/golduckb.pic"
HypnoPicFront::       INCBIN "gfx/pokemon/front/hypno.pic"
HypnoPicBack::        INCBIN "gfx/pokemon/back/hypnob.pic"
GolbatPicFront::      INCBIN "gfx/pokemon/front/golbat.pic"
GolbatPicBack::       INCBIN "gfx/pokemon/back/golbatb.pic"
MewtwoPicFront::      INCBIN "gfx/pokemon/front/mewtwo.pic"
MewtwoPicBack::       INCBIN "gfx/pokemon/back/mewtwob.pic"
SnorlaxPicFront::     INCBIN "gfx/pokemon/front/snorlax.pic"
SnorlaxPicBack::      INCBIN "gfx/pokemon/back/snorlaxb.pic"
MagikarpPicFront::    INCBIN "gfx/pokemon/front/magikarp.pic"
MagikarpPicBack::     INCBIN "gfx/pokemon/back/magikarpb.pic"
MukPicFront::         INCBIN "gfx/pokemon/front/muk.pic"
MukPicBack::          INCBIN "gfx/pokemon/back/mukb.pic"
KinglerPicFront::     INCBIN "gfx/pokemon/front/kingler.pic"
KinglerPicBack::      INCBIN "gfx/pokemon/back/kinglerb.pic"
CloysterPicFront::    INCBIN "gfx/pokemon/front/cloyster.pic"
CloysterPicBack::     INCBIN "gfx/pokemon/back/cloysterb.pic"
ElectrodePicFront::   INCBIN "gfx/pokemon/front/electrode.pic"
ElectrodePicBack::    INCBIN "gfx/pokemon/back/electrodeb.pic"
ClefablePicFront::    INCBIN "gfx/pokemon/front/clefable.pic"
ClefablePicBack::     INCBIN "gfx/pokemon/back/clefableb.pic"
WeezingPicFront::     INCBIN "gfx/pokemon/front/weezing.pic"
WeezingPicBack::      INCBIN "gfx/pokemon/back/weezingb.pic"
PersianPicFront::     INCBIN "gfx/pokemon/front/persian.pic"
PersianPicBack::      INCBIN "gfx/pokemon/back/persianb.pic"



SECTION "bank36", ROMX


BulbasaurPicFront::   INCBIN "gfx/pokemon/front/bulbasaur.pic"
BulbasaurPicBack::    INCBIN "gfx/pokemon/back/bulbasaurb.pic"
VenusaurPicFront::    INCBIN "gfx/pokemon/front/venusaur.pic"
VenusaurPicBack::     INCBIN "gfx/pokemon/back/venusaurb.pic"
TentacruelPicFront::  INCBIN "gfx/pokemon/front/tentacruel.pic"
TentacruelPicBack::   INCBIN "gfx/pokemon/back/tentacruelb.pic"
GoldeenPicFront::     INCBIN "gfx/pokemon/front/goldeen.pic"
GoldeenPicBack::      INCBIN "gfx/pokemon/back/goldeenb.pic"
SeakingPicFront::     INCBIN "gfx/pokemon/front/seaking.pic"
SeakingPicBack::      INCBIN "gfx/pokemon/back/seakingb.pic"
PonytaPicFront::      INCBIN "gfx/pokemon/front/ponyta.pic"
RapidashPicFront::    INCBIN "gfx/pokemon/front/rapidash.pic"
PonytaPicBack::       INCBIN "gfx/pokemon/back/ponytab.pic"
RapidashPicBack::     INCBIN "gfx/pokemon/back/rapidashb.pic"
RattataPicFront::     INCBIN "gfx/pokemon/front/rattata.pic"
RattataPicBack::      INCBIN "gfx/pokemon/back/rattatab.pic"
RaticatePicFront::    INCBIN "gfx/pokemon/front/raticate.pic"
RaticatePicBack::     INCBIN "gfx/pokemon/back/raticateb.pic"
NidorinoPicFront::    INCBIN "gfx/pokemon/front/nidorino.pic"
NidorinoPicBack::     INCBIN "gfx/pokemon/back/nidorinob.pic"
NidorinaPicFront::    INCBIN "gfx/pokemon/front/nidorina.pic"
NidorinaPicBack::     INCBIN "gfx/pokemon/back/nidorinab.pic"
GeodudePicFront::     INCBIN "gfx/pokemon/front/geodude.pic"
GeodudePicBack::      INCBIN "gfx/pokemon/back/geodudeb.pic"
PorygonPicFront::     INCBIN "gfx/pokemon/front/porygon.pic"
PorygonPicBack::      INCBIN "gfx/pokemon/back/porygonb.pic"
AerodactylPicFront::  INCBIN "gfx/pokemon/front/aerodactyl.pic"
AerodactylPicBack::   INCBIN "gfx/pokemon/back/aerodactylb.pic"
MagnemitePicFront::   INCBIN "gfx/pokemon/front/magnemite.pic"
MagnemitePicBack::    INCBIN "gfx/pokemon/back/magnemiteb.pic"
CharmanderPicFront::  INCBIN "gfx/pokemon/front/charmander.pic"
CharmanderPicBack::   INCBIN "gfx/pokemon/back/charmanderb.pic"
SquirtlePicFront::    INCBIN "gfx/pokemon/front/squirtle.pic"
SquirtlePicBack::     INCBIN "gfx/pokemon/back/squirtleb.pic"
CharmeleonPicFront::  INCBIN "gfx/pokemon/front/charmeleon.pic"
CharmeleonPicBack::   INCBIN "gfx/pokemon/back/charmeleonb.pic"
WartortlePicFront::   INCBIN "gfx/pokemon/front/wartortle.pic"
WartortlePicBack::    INCBIN "gfx/pokemon/back/wartortleb.pic"
CharizardPicFront::   INCBIN "gfx/pokemon/front/charizard.pic"
CharizardPicBack::    INCBIN "gfx/pokemon/back/charizardb.pic"
FossilKabutopsPic::   INCBIN "gfx/pokemon/front/fossilkabutops.pic"
FossilAerodactylPic:: INCBIN "gfx/pokemon/front/fossilaerodactyl.pic"
GhostPic::            INCBIN "gfx/battle/ghost.pic"
OddishPicFront::      INCBIN "gfx/pokemon/front/oddish.pic"
OddishPicBack::       INCBIN "gfx/pokemon/back/oddishb.pic"
GloomPicFront::       INCBIN "gfx/pokemon/front/gloom.pic"
GloomPicBack::        INCBIN "gfx/pokemon/back/gloomb.pic"


SECTION "bank37", ROMX


BellsproutPicFront::  INCBIN "gfx/pokemon/front/bellsprout.pic"
BellsproutPicBack::   INCBIN "gfx/pokemon/back/bellsproutb.pic"
WeepinbellPicFront::  INCBIN "gfx/pokemon/front/weepinbell.pic"
WeepinbellPicBack::   INCBIN "gfx/pokemon/back/weepinbellb.pic"
VictreebelPicFront::  INCBIN "gfx/pokemon/front/victreebel.pic"
VictreebelPicBack::   INCBIN "gfx/pokemon/back/victreebelb.pic"

MewPicFront::         INCBIN "gfx/pokemon/front/mew.pic"
MewPicBack::          INCBIN "gfx/pokemon/back/mewb.pic"

FarfetchdPicFront::   INCBIN "gfx/pokemon/front/farfetchd.pic"
FarfetchdPicBack::    INCBIN "gfx/pokemon/back/farfetchdb.pic"
VenonatPicFront::     INCBIN "gfx/pokemon/front/venonat.pic"
VenonatPicBack::      INCBIN "gfx/pokemon/back/venonatb.pic"
DragonitePicFront::   INCBIN "gfx/pokemon/front/dragonite.pic"
DragonitePicBack::    INCBIN "gfx/pokemon/back/dragoniteb.pic"
DoduoPicFront::       INCBIN "gfx/pokemon/front/doduo.pic"
DoduoPicBack::        INCBIN "gfx/pokemon/back/doduob.pic"
PoliwagPicFront::     INCBIN "gfx/pokemon/front/poliwag.pic"
PoliwagPicBack::      INCBIN "gfx/pokemon/back/poliwagb.pic"
JynxPicFront::        INCBIN "gfx/pokemon/front/jynx.pic"
JynxPicBack::         INCBIN "gfx/pokemon/back/jynxb.pic"
MarowakPicFront::     INCBIN "gfx/pokemon/front/marowak.pic"
MarowakPicBack::      INCBIN "gfx/pokemon/back/marowakb.pic"
ENDC

