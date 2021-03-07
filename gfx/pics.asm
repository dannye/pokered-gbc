INCLUDE "constants.asm"

SECTION "Pics 1", ROMX

IF GEN_2_GRAPHICS
MoltresPicFront::    INCBIN "gfx/pokemon/gsfront/moltres.pic"
MoltresPicBack::     INCBIN "gfx/pokemon/gsback/moltresb.pic"

TentacoolPicFront::  INCBIN "gfx/pokemon/gsfront/tentacool.pic"
TentacoolPicBack::   INCBIN "gfx/pokemon/gsback/tentacoolb.pic"
ScytherPicFront::    INCBIN "gfx/pokemon/gsfront/scyther.pic"
ScytherPicBack::     INCBIN "gfx/pokemon/gsback/scytherb.pic"
StaryuPicFront::     INCBIN "gfx/pokemon/gsfront/staryu.pic"
StaryuPicBack::      INCBIN "gfx/pokemon/gsback/staryub.pic"
BlastoisePicFront::  INCBIN "gfx/pokemon/gsfront/blastoise.pic"
BlastoisePicBack::   INCBIN "gfx/pokemon/gsback/blastoiseb.pic"
PinsirPicFront::     INCBIN "gfx/pokemon/gsfront/pinsir.pic"
PinsirPicBack::      INCBIN "gfx/pokemon/gsback/pinsirb.pic"
TangelaPicFront::    INCBIN "gfx/pokemon/gsfront/tangela.pic"
TangelaPicBack::     INCBIN "gfx/pokemon/gsback/tangelab.pic"

JolteonPicFront::    INCBIN "gfx/pokemon/gsfront/jolteon.pic"
JolteonPicBack::     INCBIN "gfx/pokemon/gsback/jolteonb.pic"
VaporeonPicFront::   INCBIN "gfx/pokemon/gsfront/vaporeon.pic"
VaporeonPicBack::    INCBIN "gfx/pokemon/gsback/vaporeonb.pic"
MachopPicFront::     INCBIN "gfx/pokemon/gsfront/machop.pic"
MachopPicBack::      INCBIN "gfx/pokemon/gsback/machopb.pic"
ZubatPicFront::      INCBIN "gfx/pokemon/gsfront/zubat.pic"
ZubatPicBack::       INCBIN "gfx/pokemon/gsback/zubatb.pic"
EkansPicFront::      INCBIN "gfx/pokemon/gsfront/ekans.pic"
EkansPicBack::       INCBIN "gfx/pokemon/gsback/ekansb.pic"
ParasPicFront::      INCBIN "gfx/pokemon/gsfront/paras.pic"
ParasPicBack::       INCBIN "gfx/pokemon/gsback/parasb.pic"
PoliwhirlPicFront::  INCBIN "gfx/pokemon/gsfront/poliwhirl.pic"
PoliwhirlPicBack::   INCBIN "gfx/pokemon/gsback/poliwhirlb.pic"
PoliwrathPicFront::  INCBIN "gfx/pokemon/gsfront/poliwrath.pic"
PoliwrathPicBack::   INCBIN "gfx/pokemon/gsback/poliwrathb.pic"
WeedlePicFront::     INCBIN "gfx/pokemon/gsfront/weedle.pic"
WeedlePicBack::      INCBIN "gfx/pokemon/gsback/weedleb.pic"
KakunaPicFront::     INCBIN "gfx/pokemon/gsfront/kakuna.pic"
KakunaPicBack::      INCBIN "gfx/pokemon/gsback/kakunab.pic"
BeedrillPicFront::   INCBIN "gfx/pokemon/gsfront/beedrill.pic"
BeedrillPicBack::    INCBIN "gfx/pokemon/gsback/beedrillb.pic"
ENDC

IF !GEN_2_GRAPHICS
MoltresPicFront::    INCBIN "gfx/pokemon/front/moltres.pic"
MoltresPicBack::     INCBIN "gfx/pokemon/back/moltresb.pic"

TentacoolPicFront::  INCBIN "gfx/pokemon/front/tentacool.pic"
TentacoolPicBack::   INCBIN "gfx/pokemon/back/tentacoolb.pic"
ScytherPicFront::    INCBIN "gfx/pokemon/front/scyther.pic"
ScytherPicBack::     INCBIN "gfx/pokemon/back/scytherb.pic"
StaryuPicFront::     INCBIN "gfx/pokemon/front/staryu.pic"
StaryuPicBack::      INCBIN "gfx/pokemon/back/staryub.pic"
BlastoisePicFront::  INCBIN "gfx/pokemon/front/blastoise.pic"
BlastoisePicBack::   INCBIN "gfx/pokemon/back/blastoiseb.pic"
PinsirPicFront::     INCBIN "gfx/pokemon/front/pinsir.pic"
PinsirPicBack::      INCBIN "gfx/pokemon/back/pinsirb.pic"
TangelaPicFront::    INCBIN "gfx/pokemon/front/tangela.pic"
TangelaPicBack::     INCBIN "gfx/pokemon/back/tangelab.pic"

JolteonPicFront::    INCBIN "gfx/pokemon/front/jolteon.pic"
JolteonPicBack::     INCBIN "gfx/pokemon/back/jolteonb.pic"
VaporeonPicFront::   INCBIN "gfx/pokemon/front/vaporeon.pic"
VaporeonPicBack::    INCBIN "gfx/pokemon/back/vaporeonb.pic"
MachopPicFront::     INCBIN "gfx/pokemon/front/machop.pic"
MachopPicBack::      INCBIN "gfx/pokemon/back/machopb.pic"
ZubatPicFront::      INCBIN "gfx/pokemon/front/zubat.pic"
ZubatPicBack::       INCBIN "gfx/pokemon/back/zubatb.pic"
EkansPicFront::      INCBIN "gfx/pokemon/front/ekans.pic"
EkansPicBack::       INCBIN "gfx/pokemon/back/ekansb.pic"
ParasPicFront::      INCBIN "gfx/pokemon/front/paras.pic"
ParasPicBack::       INCBIN "gfx/pokemon/back/parasb.pic"
PoliwhirlPicFront::  INCBIN "gfx/pokemon/front/poliwhirl.pic"
PoliwhirlPicBack::   INCBIN "gfx/pokemon/back/poliwhirlb.pic"
PoliwrathPicFront::  INCBIN "gfx/pokemon/front/poliwrath.pic"
PoliwrathPicBack::   INCBIN "gfx/pokemon/back/poliwrathb.pic"
WeedlePicFront::     INCBIN "gfx/pokemon/front/weedle.pic"
WeedlePicBack::      INCBIN "gfx/pokemon/back/weedleb.pic"
KakunaPicFront::     INCBIN "gfx/pokemon/front/kakuna.pic"
KakunaPicBack::      INCBIN "gfx/pokemon/back/kakunab.pic"
BeedrillPicFront::   INCBIN "gfx/pokemon/front/beedrill.pic"
BeedrillPicBack::    INCBIN "gfx/pokemon/back/beedrillb.pic"
ENDC


SECTION "Pics 2", ROMX

IF GEN_2_GRAPHICS
HaunterPicFront::    INCBIN "gfx/pokemon/gsfront/haunter.pic"
HaunterPicBack::     INCBIN "gfx/pokemon/gsback/haunterb.pic"
AbraPicFront::       INCBIN "gfx/pokemon/gsfront/abra.pic"
AbraPicBack::        INCBIN "gfx/pokemon/gsback/abrab.pic"
AlakazamPicFront::   INCBIN "gfx/pokemon/gsfront/alakazam.pic"
AlakazamPicBack::    INCBIN "gfx/pokemon/gsback/alakazamb.pic"
PidgeottoPicFront::  INCBIN "gfx/pokemon/gsfront/pidgeotto.pic"
PidgeottoPicBack::   INCBIN "gfx/pokemon/gsback/pidgeottob.pic"
PidgeotPicFront::    INCBIN "gfx/pokemon/gsfront/pidgeot.pic"
PidgeotPicBack::     INCBIN "gfx/pokemon/gsback/pidgeotb.pic"
StarmiePicFront::    INCBIN "gfx/pokemon/gsfront/starmie.pic"
StarmiePicBack::     INCBIN "gfx/pokemon/gsback/starmieb.pic"
RedPicBack::         INCBIN "gfx/gstrainers/redb.pic"
OldManPicBack::      INCBIN "gfx/gstrainers/oldmanb.pic"

GastlyPicFront::     INCBIN "gfx/pokemon/gsfront/gastly.pic"
GastlyPicBack::      INCBIN "gfx/pokemon/gsback/gastlyb.pic"
VileplumePicFront::  INCBIN "gfx/pokemon/gsfront/vileplume.pic"
VileplumePicBack::   INCBIN "gfx/pokemon/gsback/vileplumeb.pic"
ENDC

IF !GEN_2_GRAPHICS
HaunterPicFront::    INCBIN "gfx/pokemon/front/haunter.pic"
HaunterPicBack::     INCBIN "gfx/pokemon/back/haunterb.pic"
AbraPicFront::       INCBIN "gfx/pokemon/front/abra.pic"
AbraPicBack::        INCBIN "gfx/pokemon/back/abrab.pic"
AlakazamPicFront::   INCBIN "gfx/pokemon/front/alakazam.pic"
AlakazamPicBack::    INCBIN "gfx/pokemon/back/alakazamb.pic"
PidgeottoPicFront::  INCBIN "gfx/pokemon/front/pidgeotto.pic"
PidgeottoPicBack::   INCBIN "gfx/pokemon/back/pidgeottob.pic"
PidgeotPicFront::    INCBIN "gfx/pokemon/front/pidgeot.pic"
PidgeotPicBack::     INCBIN "gfx/pokemon/back/pidgeotb.pic"
StarmiePicFront::    INCBIN "gfx/pokemon/front/starmie.pic"
StarmiePicBack::     INCBIN "gfx/pokemon/back/starmieb.pic"
RedPicBack::         INCBIN "gfx/player/redb.pic"
OldManPicBack::      INCBIN "gfx/battle/oldmanb.pic"

GastlyPicFront::     INCBIN "gfx/pokemon/front/gastly.pic"
GastlyPicBack::      INCBIN "gfx/pokemon/back/gastlyb.pic"
VileplumePicFront::  INCBIN "gfx/pokemon/front/vileplume.pic"
VileplumePicBack::   INCBIN "gfx/pokemon/back/vileplumeb.pic"
ENDC


SECTION "Pics 3", ROMX

; Removed 'mon sprites from here


SECTION "Pics 4", ROMX

; Removed 'mon sprites from here


SECTION "Pics 5", ROMX

; Removed 'mon sprites from here


SECTION "Pics 6", ROMX

TrainerPics::
IF GEN_2_GRAPHICS
YoungsterPic::     INCBIN "gfx/gstrainers/youngster.pic"
BugCatcherPic::    INCBIN "gfx/gstrainers/bugcatcher.pic"
LassPic::          INCBIN "gfx/gstrainers/lass.pic"
SailorPic::        INCBIN "gfx/gstrainers/sailor.pic"
JrTrainerMPic::    INCBIN "gfx/gstrainers/jr.trainerm.pic"
JrTrainerFPic::    INCBIN "gfx/gstrainers/jr.trainerf.pic"
PokemaniacPic::    INCBIN "gfx/gstrainers/pokemaniac.pic"
SuperNerdPic::     INCBIN "gfx/gstrainers/supernerd.pic"
HikerPic::         INCBIN "gfx/gstrainers/hiker.pic"
BikerPic::         INCBIN "gfx/gstrainers/biker.pic"
BurglarPic::       INCBIN "gfx/gstrainers/burglar.pic"
EngineerPic::      INCBIN "gfx/gstrainers/engineer.pic"
FisherPic::        INCBIN "gfx/gstrainers/fisher.pic"
SwimmerPic::       INCBIN "gfx/gstrainers/swimmer.pic"
CueBallPic::       INCBIN "gfx/gstrainers/cueball.pic"
GamblerPic::       INCBIN "gfx/gstrainers/gambler.pic"
BeautyPic::        INCBIN "gfx/gstrainers/beauty.pic"
PsychicPic::       INCBIN "gfx/gstrainers/psychic.pic"
RockerPic::        INCBIN "gfx/gstrainers/rocker.pic"
JugglerPic::       INCBIN "gfx/gstrainers/juggler.pic"
TamerPic::         INCBIN "gfx/gstrainers/tamer.pic"
BirdKeeperPic::    INCBIN "gfx/gstrainers/birdkeeper.pic"
BlackbeltPic::     INCBIN "gfx/gstrainers/blackbelt.pic"
Rival1Pic::        INCBIN "gfx/gstrainers/rival1.pic"
ProfOakPic::       INCBIN "gfx/gstrainers/prof.oak.pic"
ChiefPic::
ScientistPic::     INCBIN "gfx/gstrainers/scientist.pic"
GiovanniPic::      INCBIN "gfx/gstrainers/giovanni.pic"
RocketPic::        INCBIN "gfx/gstrainers/rocket.pic"
CooltrainerMPic::  INCBIN "gfx/gstrainers/cooltrainerm.pic"
CooltrainerFPic::  INCBIN "gfx/gstrainers/cooltrainerf.pic"
BrunoPic::         INCBIN "gfx/gstrainers/bruno.pic"
BrockPic::         INCBIN "gfx/gstrainers/brock.pic"
MistyPic::         INCBIN "gfx/gstrainers/misty.pic"
LtSurgePic::       INCBIN "gfx/gstrainers/lt.surge.pic"
ErikaPic::         INCBIN "gfx/gstrainers/erika.pic"
KogaPic::          INCBIN "gfx/gstrainers/koga.pic"
BlainePic::        INCBIN "gfx/gstrainers/blaine.pic"
SabrinaPic::       INCBIN "gfx/gstrainers/sabrina.pic"
GentlemanPic::     INCBIN "gfx/gstrainers/gentleman.pic"
Rival2Pic::        INCBIN "gfx/gstrainers/rival2.pic"
Rival3Pic::        INCBIN "gfx/gstrainers/rival3.pic"
LoreleiPic::       INCBIN "gfx/gstrainers/lorelei.pic"
ChannelerPic::     INCBIN "gfx/gstrainers/channeler.pic"
AgathaPic::        INCBIN "gfx/gstrainers/agatha.pic"
LancePic::         INCBIN "gfx/gstrainers/lance.pic"
ENDC

IF !GEN_2_GRAPHICS
YoungsterPic::     INCBIN "gfx/trainers/youngster.pic"
BugCatcherPic::    INCBIN "gfx/trainers/bugcatcher.pic"
LassPic::          INCBIN "gfx/trainers/lass.pic"
SailorPic::        INCBIN "gfx/trainers/sailor.pic"
JrTrainerMPic::    INCBIN "gfx/trainers/jr.trainerm.pic"
JrTrainerFPic::    INCBIN "gfx/trainers/jr.trainerf.pic"
PokemaniacPic::    INCBIN "gfx/trainers/pokemaniac.pic"
SuperNerdPic::     INCBIN "gfx/trainers/supernerd.pic"
HikerPic::         INCBIN "gfx/trainers/hiker.pic"
BikerPic::         INCBIN "gfx/trainers/biker.pic"
BurglarPic::       INCBIN "gfx/trainers/burglar.pic"
EngineerPic::      INCBIN "gfx/trainers/engineer.pic"
FisherPic::        INCBIN "gfx/trainers/fisher.pic"
SwimmerPic::       INCBIN "gfx/trainers/swimmer.pic"
CueBallPic::       INCBIN "gfx/trainers/cueball.pic"
GamblerPic::       INCBIN "gfx/trainers/gambler.pic"
BeautyPic::        INCBIN "gfx/trainers/beauty.pic"
PsychicPic::       INCBIN "gfx/trainers/psychic.pic"
RockerPic::        INCBIN "gfx/trainers/rocker.pic"
JugglerPic::       INCBIN "gfx/trainers/juggler.pic"
TamerPic::         INCBIN "gfx/trainers/tamer.pic"
BirdKeeperPic::    INCBIN "gfx/trainers/birdkeeper.pic"
BlackbeltPic::     INCBIN "gfx/trainers/blackbelt.pic"
Rival1Pic::        INCBIN "gfx/trainers/rival1.pic"
ProfOakPic::       INCBIN "gfx/trainers/prof.oak.pic"
ChiefPic::
ScientistPic::     INCBIN "gfx/trainers/scientist.pic"
GiovanniPic::      INCBIN "gfx/trainers/giovanni.pic"
RocketPic::        INCBIN "gfx/trainers/rocket.pic"
CooltrainerMPic::  INCBIN "gfx/trainers/cooltrainerm.pic"
CooltrainerFPic::  INCBIN "gfx/trainers/cooltrainerf.pic"
BrunoPic::         INCBIN "gfx/trainers/bruno.pic"
BrockPic::         INCBIN "gfx/trainers/brock.pic"
MistyPic::         INCBIN "gfx/trainers/misty.pic"
LtSurgePic::       INCBIN "gfx/trainers/lt.surge.pic"
ErikaPic::         INCBIN "gfx/trainers/erika.pic"
KogaPic::          INCBIN "gfx/trainers/koga.pic"
BlainePic::        INCBIN "gfx/trainers/blaine.pic"
SabrinaPic::       INCBIN "gfx/trainers/sabrina.pic"
GentlemanPic::     INCBIN "gfx/trainers/gentleman.pic"
Rival2Pic::        INCBIN "gfx/trainers/rival2.pic"
Rival3Pic::        INCBIN "gfx/trainers/rival3.pic"
LoreleiPic::       INCBIN "gfx/trainers/lorelei.pic"
ChannelerPic::     INCBIN "gfx/trainers/channeler.pic"
AgathaPic::        INCBIN "gfx/trainers/agatha.pic"
LancePic::         INCBIN "gfx/trainers/lance.pic"
ENDC
