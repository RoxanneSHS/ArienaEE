BEGIN MWARNJ

IF ~Global("beeninprison","GLOBAL",1)~ THEN hisofplay
SAY @0 
  IF ~~ THEN REPLY @1 DO ~SetGlobal("beeninprison","GLOBAL",2)~ GOTO Arwkpsa
  IF ~~ THEN REPLY @2 DO ~SetGlobal("beeninprison","GLOBAL",2)~ GOTO notathe
  IF ~~ THEN REPLY @3 DO ~SetGlobal("beeninprison","GLOBAL",2)~ GOTO Arexp
  IF ~~ THEN REPLY @4 DO ~SetGlobal("beeninprison","GLOBAL",2)~ GOTO Arexp
  IF ~~ THEN REPLY @5 DO ~SetGlobal("beeninprison","GLOBAL",2)~ GOTO ArAoLC
  IF ~~ THEN REPLY @6 DO ~SetGlobal("beeninprison","GLOBAL",2)~ GOTO Arexp2
END

IF ~~ THEN BEGIN ArAoLC
  SAY @7
  IF ~~ THEN REPLY @1 DO ~SetGlobal("beeninprison","GLOBAL",2)~ GOTO Arwkpsa
  IF ~~ THEN REPLY @2 DO ~SetGlobal("beeninprison","GLOBAL",2)~ GOTO notathe
  IF ~~ THEN REPLY @3 DO ~SetGlobal("beeninprison","GLOBAL",2)~ GOTO Arexp
  IF ~~ THEN REPLY @4 DO ~SetGlobal("beeninprison","GLOBAL",2)~ GOTO Arexp
  IF ~~ THEN REPLY @6 DO ~SetGlobal("beeninprison","GLOBAL",2)~ GOTO Arexp2
END

IF ~~ THEN BEGIN Arwkpsa
  SAY @8
  IF ~~ THEN REPLY @9 GOTO Plstrom
  IF ~~ THEN REPLY @10 GOTO Plstrom
  IF ~~ THEN REPLY @11 GOTO Plstrom
  IF ~~ THEN REPLY @12 GOTO Plnostr
END

IF ~~ THEN BEGIN Arexp
  SAY @13
 =
 @14
  IF ~~ THEN REPLY @15 GOTO Arwkpsa
  IF ~~ THEN REPLY @16 GOTO Arwkpsa 
  IF ~~ THEN REPLY @17 GOTO Arwkpsa
  IF ~~ THEN REPLY @18 GOTO nocend
END

IF ~~ THEN BEGIN Arexp2
  SAY @19
 =
 @20
  IF ~~ THEN REPLY @15 GOTO Arwkpsa
  IF ~~ THEN REPLY @16 GOTO Arwkpsa 
  IF ~~ THEN REPLY @17 GOTO Arwkpsa
  IF ~~ THEN REPLY @18 GOTO nocend
END

IF ~~ THEN BEGIN Plstrom
  SAY @21
  IF ~~ THEN REPLY @22 GOTO nocend
  IF ~~ THEN REPLY @23 GOTO nocend
  IF ~~ THEN REPLY @24 EXIT 
  IF ~~ THEN REPLY @25 GOTO Arexp3
END

IF ~~ THEN BEGIN Arexp3
  SAY @26
 =
 @27
  IF ~~ THEN REPLY @28 EXIT
  IF ~~ THEN REPLY @29 EXIT
  IF ~~ THEN REPLY @30 EXIT
END

IF ~~ THEN BEGIN Plnostr
  SAY @31
  IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN notathe
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nocend
  SAY @33
  IF ~~ THEN EXIT
END

IF ~Global("Powerfulwarrior","GLOBAL",1)~ THEN takepower
SAY @34
  IF ~~ THEN REPLY @35 DO ~SetGlobal("Powerfulwarrior","GLOBAL",2)~ GOTO nowantpower
  IF ~~ THEN REPLY @36 DO ~SetGlobal("Powerfulwarrior","GLOBAL",2)~ GOTO takingtime
  IF ~~ THEN REPLY @37 DO ~SetGlobal("Powerfulwarrior","GLOBAL",2)~ GOTO takingtime
  IF ~~ THEN REPLY @38 DO ~SetGlobal("Powerfulwarrior","GLOBAL",2)~ GOTO shoulddo
END

IF ~~ THEN BEGIN nowantpower
  SAY @39
  IF ~~ THEN REPLY @40 GOTO younodares
  IF ~~ THEN REPLY @41 GOTO Asinstinct
  IF ~~ THEN REPLY @42 GOTO OthwathA
END

IF ~~ THEN BEGIN takingtime
  SAY @43
  IF ~~ THEN REPLY @44 GOTO younodares
  IF ~~ THEN REPLY @45 GOTO Asinstinct
  IF ~~ THEN REPLY @46 GOTO OthwathA
END

IF ~~ THEN BEGIN shoulddo
  SAY @47
  IF ~~ THEN REPLY @48 GOTO Agladto
  IF ~~ THEN REPLY @49 GOTO movealong
END

IF ~~ THEN BEGIN younodares
  SAY @50
  IF ~~ THEN REPLY @51 GOTO nowishstay
  IF ~~ THEN REPLY @52 GOTO maybeisright
  IF ~~ THEN REPLY @53 GOTO OthwathA
END

IF ~~ THEN BEGIN Asinstinct
  SAY @54
  IF ~~ THEN REPLY @55 GOTO insigood
  IF ~~ THEN REPLY @56 GOTO maybeisright
  IF ~~ THEN REPLY @57 GOTO whatittell
END

IF ~~ THEN BEGIN insigood
  SAY @58
  IF ~~ THEN REPLY @59 GOTO movealong
  IF ~~ THEN REPLY @60 GOTO Anoslave
END

IF ~~ THEN BEGIN whatittell
  SAY @61 
  IF ~~ THEN REPLY @62 GOTO younodares
  IF ~~ THEN REPLY @63 GOTO shoulddo
  IF ~~ THEN REPLY @64 GOTO movealong
END

IF ~~ THEN BEGIN OthwathA
  SAY @65
  IF ~~ THEN REPLY @66 GOTO Agladto
  IF ~~ THEN REPLY @67 GOTO Afiokwp
  IF ~~ THEN REPLY @68 GOTO maybeisright
END

IF ~~ THEN BEGIN Anoslave
  SAY @69
  IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN nowishstay
  SAY @70
  IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN maybeisright
  SAY @71
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Afiokwp
  SAY @72
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Agladto
  SAY @73
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN movealong
  SAY @74
  IF ~~ THEN EXIT
END

IF ~Global("Arnightout","GLOBAL",1)~ THEN capaneatwb
SAY @75
  IF ~~ THEN REPLY @76 DO ~SetGlobal("Arnightout","GLOBAL",2)~ GOTO endarnout
  IF ~~ THEN REPLY @77 DO ~SetGlobal("Arnightout","GLOBAL",2)~ GOTO endarnout
  IF ~~ THEN REPLY @78 DO ~SetGlobal("Arnightout","GLOBAL",2)~ GOTO Arexnout
  IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY @79 DO ~SetGlobal("Arnightout","GLOBAL",2)~ GOTO Arbatoc
  IF ~CheckStatLT(Player1,13,CHR)~ THEN REPLY @79 DO ~SetGlobal("Arnightout","GLOBAL",2)~ GOTO Arnobaim
END

IF ~~ THEN BEGIN Arexnout
  SAY @80
  IF ~~ THEN REPLY @81 GOTO nxmaftthr 
  IF ~~ THEN REPLY @82 GOTO lithintcelpa
  IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY @83 GOTO Arbatoc
  IF ~CheckStatLT(Player1,13,CHR)~ THEN REPLY @83 GOTO Arnobaim 
END

IF ~~ THEN BEGIN lithintcelpa
  SAY @84
  IF ~CheckStatGT(Player1,12,WIS) CheckStatGT(Player1,12,INT)~ THEN REPLY @85 GOTO endofconanio
  IF ~~ THEN REPLY @86 GOTO nxmaftthr
  IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY @87 GOTO Arbatoc
  IF ~CheckStatLT(Player1,13,CHR)~ THEN REPLY @87 GOTO Arnobaim 
END

IF ~~ THEN BEGIN endofconanio
  SAY @88
  IF ~~ THEN REPLY @89 GOTO nxmaftthr
  IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY @90 GOTO Arbatoc
  IF ~CheckStatLT(Player1,13,CHR)~ THEN REPLY @91 GOTO Arnobaim 
END

IF ~~ THEN BEGIN Arnobaim
  SAY @92
  IF ~CheckStatGT(Player1,18,STR)~ THEN REPLY @93 GOTO Arbatoc
  IF ~CheckStatLT(Player1,19,STR)~ THEN REPLY @93 GOTO Dissarfe
  IF ~~ THEN REPLY @94 GOTO nxmaftthr
END

IF ~~ THEN BEGIN endarnout
  SAY @95
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN Arbatoc
  SAY @96
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN Dissarfe
  SAY @97
IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN nxmaftthr
  SAY @98
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("aasimarmom","GLOBAL",1)~ THEN whatisaasimar
SAY @99
  IF ~Global("mirrortwice","GLOBAL",1)~ THEN REPLY @100 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ GOTO explwhyqaasmom
  IF ~CheckStatGT(PLAYER1,14,INT)~ THEN REPLY @101 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ GOTO knowmoreaas
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") !InParty("Edwin") !InParty("Imoen2") !InParty("Anomen") !InParty("MWIan")~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ GOTO NoArQuthisgame
  IF ~CheckStatLT(PLAYER1,15,INT) InParty("MWKido")~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN MWKidJ KidCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") InParty("HaerDalis") !Global("mirrortwice","GLOBAL",1)~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN HAERDAJ HaeCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") InParty("HaerDalis") Global("mirrortwice","GLOBAL",1)~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN HAERDAJ HaeCoArQu2
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") InParty("MWKiri")~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN MWKIRIJ KirCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") InParty("Keldorn")~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN KELDORJ KelCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") InParty("Edwin")~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN EDWINJ EdwCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") !InParty("Edwin") InParty("Imoen2")~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN IMOEN2J ImoCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") !InParty("Edwin") !InParty("Imoen2") InParty("Anomen") GlobalLT("AnomenIsNotKnight","GLOBAL",1)~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN ANOMENJ AnoCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") !InParty("Edwin") !InParty("Imoen2") InParty("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN ANOMENJ AnoCoArQu2
  IF ~CheckStatLT(PLAYER1,15,INT)  !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") !InParty("Edwin") !InParty("Imoen2") !InParty("Anomen") InParty("MWIan")~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN MWIANJ IanCoArQu
  IF ~~ THEN REPLY @103 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ GOTO explwhyqaasmom
  IF ~~ THEN REPLY @104 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ GOTO NoArQuthisgame
END

IF ~~ THEN BEGIN explwhyqaasmom
  SAY @105
  IF ~CheckStatGT(PLAYER1,14,INT)~ THEN REPLY @101 GOTO knowmoreaas
    IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") !InParty("Edwin") !InParty("Imoen2") !InParty("Anomen") !InParty("MWIan")~ THEN REPLY @102 GOTO NoArQuthisgame
  IF ~CheckStatLT(PLAYER1,15,INT) InParty("MWKido")~ THEN REPLY @102 EXTERN MWKidJ KidCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") InParty("HaerDalis") !Global("mirrortwice","GLOBAL",1)~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN HAERDAJ HaeCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") InParty("HaerDalis") Global("mirrortwice","GLOBAL",1)~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN HAERDAJ HaeCoArQu2
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") InParty("MWKiri")~ THEN REPLY @102 EXTERN MWKIRIJ KirCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") InParty("Keldorn")~ THEN REPLY @102 EXTERN KELDORJ KelCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") InParty("Edwin")~ THEN REPLY @102 EXTERN EDWINJ EdwCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") !InParty("Edwin") InParty("Imoen2")~ THEN REPLY @102 EXTERN IMOEN2J ImoCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") !InParty("Edwin") !InParty("Imoen2") InParty("Anomen") GlobalLT("AnomenIsNotKnight","GLOBAL",1)~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN ANOMENJ AnoCoArQu
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") !InParty("Edwin") !InParty("Imoen2") InParty("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN REPLY @102 DO ~SetGlobal("aasimarmom","GLOBAL",2)~ EXTERN ANOMENJ AnoCoArQu2
  IF ~CheckStatLT(PLAYER1,15,INT) !InParty("MWKido") !InParty("HaerDalis") !InParty("MWKiri") !InParty("Keldorn") !InParty("Edwin") !InParty("Imoen2") !InParty("Anomen") InParty("MWIan")~ THEN REPLY @102 EXTERN MWIANJ IanCoArQu
  IF ~~ THEN REPLY @104 GOTO NoArQuthisgame
END

IF ~~ THEN BEGIN knowmoreaas
  SAY @106
  IF ~CheckStatGT(PLAYER1,12,WIS)~ THEN REPLY @107 GOTO araskque
  IF ~CheckStatGT(PLAYER1,14,INT)~ THEN REPLY @108 GOTO araskque
  IF ~~ THEN REPLY @109 GOTO araskque
  IF ~CheckStatLT(PLAYER1,15,INT)~ THEN REPLY @110 GOTO NoArQuthisgame
  IF ~~ THEN REPLY @111 GOTO NoArQuthisgame
END

IF ~~ THEN BEGIN NoArQuthisgame
  SAY @112
  IF ~~ THEN DO ~SetGlobal("aasimarmom","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN araskque
  SAY @113
  IF ~~ THEN REPLY @114 GOTO arspeakmom
  IF ~~ THEN REPLY @115 GOTO NoArQuthisgame
END

IF ~~ THEN BEGIN arspeakmom
  SAY @116
  IF ~~ THEN REPLY @117 GOTO NoArQuthisgame
  IF ~~ THEN REPLY @118 DO ~SetGlobal("aasimarmom","GLOBAL",4)~ EXIT
END

IF ~Global("Arperqu","GLOBAL",1)~ THEN perquar
SAY @119
=
@120
  IF ~~ THEN REPLY @121 DO ~SetGlobal("Arperqu","GLOBAL",2)~ GOTO Artellplan
  IF ~~ THEN REPLY @122 DO ~SetGlobal("Arperqu","GLOBAL",2)~ GOTO Artellplan
  IF ~~ THEN REPLY @123 DO ~SetGlobal("Arperqu","GLOBAL",2)~ GOTO Arinabherpl
  IF ~~ THEN REPLY @124 DO ~SetGlobal("Arperqu","GLOBAL",2)~ GOTO Arinabherpl
  IF ~~ THEN REPLY @125 DO ~SetGlobal("Arperqu","GLOBAL",2)~ GOTO Arplanreject
END

IF ~~ THEN BEGIN Artellplan 
  SAY @126
=
@127
  IF ~~ THEN REPLY @128 GOTO Arplanaccept
  IF ~~ THEN REPLY @129 GOTO Arplanaccept
  IF ~~ THEN REPLY @130 GOTO Arplanreject
  IF ~~ THEN REPLY @131 GOTO Arplanreject
  IF ~~ THEN REPLY @132 GOTO Argiveupplan
END

IF ~~ THEN BEGIN Arplanaccept
  SAY @133
  IF ~~ THEN DO ~SetGlobal("Arperqu","GLOBAL",4)~
UNSOLVED_JOURNAL @134
EXIT
END

IF ~~ THEN BEGIN Arplanreject
  SAY @135
  IF ~~ THEN DO ~SetGlobal("Arperqu","GLOBAL",3)~
SOLVED_JOURNAL @136
EXIT
END

IF ~~ THEN BEGIN Argiveupplan
  SAY @137
  IF ~~ THEN REPLY @138 GOTO Arplanaccept
  IF ~~ THEN REPLY @139 GOTO Arplanaccept
  IF ~~ THEN REPLY @140 DO ~SetGlobal("Arperqu","GLOBAL",3)~
SOLVED_JOURNAL @136
EXIT
END

IF ~~ THEN BEGIN Arinabherpl 
  SAY @141
  IF ~~ THEN REPLY @142 GOTO Artellplan
  IF ~~ THEN REPLY @143 GOTO Artellplan
  IF ~~ THEN REPLY @144 GOTO Artellplan
  IF ~~ THEN REPLY @145 DO ~SetGlobal("Arperqu","GLOBAL",3)~
SOLVED_JOURNAL @136
EXIT
  IF ~~ THEN REPLY @146 DO ~SetGlobal("Arperqu","GLOBAL",3) ActionOverride("MWAriena",LeaveParty()) ActionOverride("MWAriena",EscapeArea())~
SOLVED_JOURNAL @136
EXIT
END

IF ~Global("Arperqu","GLOBAL",7)~ THEN FindArMoth
SAY @147
  IF ~~ THEN REPLY @148 DO ~SetGlobal("Arperqu","GLOBAL",8)~ GOTO OnRouteToAM
  IF ~~ THEN REPLY @149 DO ~SetGlobal("Arperqu","GLOBAL",8)~ GOTO LaterRouteAM
  IF ~Global("RaOrGiveHelp","Global",1)~ THEN REPLY @150 DO ~SetGlobal("Arperqu","GLOBAL",8)~ GOTO ArWonderHP
  IF ~Global("RaOrGiveHelp","Global",1)~ THEN REPLY @151 DO ~SetGlobal("Arperqu","GLOBAL",8)~ GOTO ArWonderHP2
  IF ~Global("RaOrKill","GLOBAL",1)~ THEN REPLY @152 DO ~SetGlobal("Arperqu","GLOBAL",8)~ GOTO ROKillReac
  IF ~Global("RaOrKill","GLOBAL",1)~ THEN REPLY @153 DO ~SetGlobal("Arperqu","GLOBAL",8)~ GOTO RoKillReac2
END

IF ~~ THEN BEGIN OnRouteToAM
SAY @154
IF ~~ THEN
UNSOLVED_JOURNAL @155
EXIT
END

IF ~~ THEN BEGIN LaterRouteAM
SAY @156
IF ~~ THEN
UNSOLVED_JOURNAL @157
EXIT
END

IF ~~ THEN BEGIN ArWonderHP
SAY @158
IF ~~ THEN
UNSOLVED_JOURNAL @159
EXIT
END

IF ~~ THEN BEGIN ArWonderHP2
SAY @160
IF ~~ THEN
UNSOLVED_JOURNAL @159
EXIT
END

IF ~~ THEN BEGIN ROKillReac
SAY @161
IF ~~ THEN REPLY @162
UNSOLVED_JOURNAL @163
EXIT
END

IF ~~ THEN BEGIN RoKillReac2
SAY @164
IF ~~ THEN
UNSOLVED_JOURNAL @163
EXIT
END

IF ~Global("After_Arco","GLOBAL",1)~ THEN Hunter
SAY @165 
IF ~~ THEN REPLY @166 DO ~SetGlobal("After_Arco","GLOBAL",2)~ EXIT
IF ~~ THEN REPLY @167 DO ~SetGlobal("After_Arco","GLOBAL",2)~ EXIT
IF ~~ THEN REPLY @168 DO ~SetGlobal("After_Arco","GLOBAL",2)~ EXIT
IF ~~ THEN REPLY @169 DO ~SetGlobal("After_Arco","GLOBAL",2)~ GOTO Arnobesoled
END

IF ~~ THEN BEGIN Arnobesoled
SAY @170
IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~Dead("Gladiator") !Dead("Lehtinan") Global("Ar_Glad","LOCALS",1)~ THEN Glad_Weak
SAY @171
IF ~~ THEN DO ~SetGlobal("Ar_Glad","LOCALS",2)~ EXIT
END

CHAIN IF ~Global("nolikegods","GLOBAL",1)~ THEN MWArnJ Anoligods
@172 DO ~SetGlobal("nolikegods","GLOBAL",2)~
== BKELDOR IF ~InParty("Keldorn")~ THEN @173
== MWBKid IF ~InParty("MWKido")~ THEN @174
== BVICONI IF ~InParty("Viconia")~ THEN @175
== BANOMEN IF ~InParty("Anomen")~ THEN @176
== BJAHEIR IF ~InParty("Jaheira")~ THEN @177
== MWArnJ IF ~OR(5) InParty("Keldorn") InParty("MWKido") InParty("Viconia") InParty("Jaheira") InParty("Anomen")~ THEN @178
END
IF ~Class(Player1,PALADIN)~ THEN REPLY @179 EXTERN MWArnJ searawforgods
IF ~Class(Player1,CLERIC_ALL)~ THEN REPLY @179 EXTERN MWArnJ searawforgods
IF ~!Class(Player1,PALADIN) !Class(Player1,CLERIC_ALL)~ THEN REPLY @180 EXTERN MWArnJ searawforgods
IF ~~ THEN REPLY @181 EXTERN MWArnJ malargaragos
IF ~~ THEN REPLY @182 EXIT

CHAIN IF ~Global("nolikegods","GLOBAL",2)~ THEN MWArnJ searawforgods
@183
DO ~SetGlobal("nolikegods","GLOBAL",3) LeaveParty() EscapeAreaMove("AR0300",4544,2236,2)~
EXIT

CHAIN IF ~Global("nolikegods","GLOBAL",2)~ THEN MWArnJ malargaragos
@184
END
IF ~~ THEN REPLY @185 DO ~SetGlobal("nolikegods","GLOBAL",4)~ EXIT
IF ~~ THEN REPLY @186 DO ~SetGlobal("nolikegods","GLOBAL",4)~ EXIT
IF ~~ THEN REPLY @187 EXTERN MWArnJ arnocaplopargo

CHAIN IF ~Global("nolikegods","GLOBAL",2)~ THEN MWArnJ arnocaplopargo
@188
END
IF ~~ THEN REPLY @189 DO ~SetGlobal("nolikegods","GLOBAL",5)~ EXIT
IF ~~ THEN REPLY @190 EXTERN MWArnJ searawforgods

CHAIN MWArnJ explainmeeting
@191
== DRUFF1 @192
== MWArnJ @193
== DRUFF1 @194
EXIT

CHAIN MWArnJ arienasceptic
@195
EXIT

CHAIN MWArnJ arienasceptic2
@196
== DRUFF1 @197
EXIT

CHAIN MWArnJ Ariena_sexy
@198
== SALVANAS @199
== MWArnJ @200
== SALVANAS @201
== MWArnJ @202
== SALVANAS @203
== MWArnJ @204
== SALVANAS @205 
== MWArnJ @206 DO ~ActionOverride("MWAriena",SwingOnce()) ActionOverride("Salvanas",Recoil())~
== SALVANAS @207 DO ~ ActionOverride("Salvanas",PlayDead(60))~
== MWArnJ @208 DO ~ActionOverride("Salvanas",RunAwayFrom("MWAriena",30))~
EXIT

CHAIN IF ~See("MWAriena") !Dead("MWAriena") 
Global("UpSetPit","GLOBAL",1)~ THEN Copgreet warnara
@209 DO ~SetGlobal("UpSetPit","GLOBAL",2)~ 
== MWArnJ @210
EXIT

CHAIN IF WEIGHT #-1 ~See("MWAriena") !Dead("MWAriena") 
Global("UpSetPit","GLOBAL",0)~ THEN noble1 BetonAra
@211 DO ~SetGlobal("UpSetPit","GLOBAL",1)~ 
== MWArnJ @212
== NOBLE2 @213
== NOBLE1 @214
== NOBLE2 @215
== NOBLE1 @216
== NOBLE2 @217
== MWArnJ @218
== NOBLE2 @219
== NOBLE1 @220
EXIT

CHAIN IF WEIGHT #-1 ~See("MWAriena") !Dead("MWAriena") Global("Aradruff2","GLOBAL",0)~ THEN DRUFF2 Druff2ReAra
@221 DO ~SetGlobal("Aradruff2","GLOBAL",1)~
== MWArnJ @222
EXIT

CHAIN IF WEIGHT #-1 ~See("MWAriena") !Dead("MWAriena") Global("Aradruff1","GLOBAL",0)~ THEN DRUFF1 Druff1ReAra
@223 DO ~SetGlobal("Aradruff1","GLOBAL",1)~
== MWArnJ @224
== DRUFF1 @225
END
IF ~CheckStatLT(Player1,13,WIS)~ THEN REPLY @226 EXTERN MWArnJ explainmeeting
IF ~CheckStatGT(Player1,12,WIS)~ THEN REPLY @227 EXTERN MWArnJ arienasceptic
IF ~CheckStatGT(Player1,12,WIS)~ THEN REPLY @228 EXTERN MWArnJ arienasceptic2

CHAIN HPRELATE ArQuNoOrHelp
@229
== MWArnJ IF ~~ THEN @230
END
IF ~~ THEN REPLY @231 DO ~SetGlobal("Arperqu","Global",5)~ EXTERN HPRELATE 25
IF ~~ THEN REPLY @232 DO ~SetGlobal("Arperqu","Global",5)~ EXTERN HPRELATE 25
IF ~~ THEN REPLY @233 DO ~SetGlobal("Arperqu","Global",6)~ EXTERN HPRELATE RaOrFight

CHAIN HPRELATE ArQuOrHelp
@234
END
IF ~~ THEN REPLY @235 EXTERN HPRELATE TellUmHi
IF ~~ THEN REPLY @236 EXTERN HPRELATE HPCareArQu

CHAIN HPRELATE HPCareArQu
@237
END
IF ~~ THEN REPLY @238 GOTO TellUmHi
IF ~~ THEN REPLY @239 EXTERN HPRELATE HPsuspicious
IF ~~ THEN REPLY @240 EXTERN HPRELATE HPNotCon

CHAIN HPRELATE RaOrFight
@241  DO ~ClearAllActions() 
SetGlobal("Arperqu","GLOBAL",6)
ActionOverride("HPRELATE",Enemy())
ActionOverride("HMELVIN",Enemy())
ActionOverride("KAYL2",Enemy())
ActionOverride("HEARTG3",Enemy())
ActionOverride("HEARTG4",Enemy())
ActionOverride("HEARTG5",Enemy())
ActionOverride("HEARTG1",Enemy())
ActionOverride("HEARTG2",Enemy())~ EXIT

CHAIN HPRELATE HPsuspicious
@242
END
IF ~~ THEN REPLY @243 EXTERN HPRELATE CounterT
IF ~~ THEN REPLY @244 DO ~SetGlobal("Arperqu","Global",5)~ EXIT
IF ~~ THEN REPLY @245 EXTERN HPRELATE RaOrFight
IF ~~ THEN REPLY @246 EXTERN HPRELATE RaOrFight

CHAIN HPRELATE HPNotCon
@247
END
IF ~~ THEN REPLY @248 EXTERN HPRELATE HPsuspicious
IF ~~ THEN REPLY @249 DO ~SetGlobal("Arperqu","Global",5)~ EXTERN HPRELATE 25
IF ~~ THEN REPLY @250 EXTERN HPRELATE HPsuspicious

CHAIN HPRELATE CounterT
@251
END
IF ~~ THEN REPLY @252 EXTERN HPRELATE TellUmHi

CHAIN HPRELATE TellUmHi
@253
END
IF ~~ THEN REPLY @254 DO ~AddXPObject(Player1,6000)
AddXPObject(Player2,6000)
AddXPObject(Player3,6000)
AddXPObject(Player4,6000)
AddXPObject(Player5,6000)
AddXPObject(Player6,6000)
SetGlobal("Arperqu","Global",5)
SetGlobal("RaOrGiveHelp","Global",1)~ EXIT

CHAIN IF WEIGHT #-98 ~Global("MWBertpulped","GLOBAL",1)~ THEN BERTRAND You_Brute
@255
== MWArnJ @256 DO ~SetGlobal("MWBertpulped","GLOBAL",2)
ActionOverride("Bertrand",EscapeArea())~ 
EXIT

I_C_T INSPECT 9 Aranocbeg
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN @257
END

I_C_T HENDAK 1 Nolikebeg
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN  @258
END

I_C_T2 BEAST 1 Animalnohelp1
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN  @259
END

I_C_T2 BEAST 5 Animalnohelp2
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN  @259
END

I_C_T COPGREET 1 Pitnogoodmem
== MWArnJ IF ~InParty("MWAriena") !Dead("MWAriena")~ THEN  @260 DO ~SetGlobal("UpsetPit","GLOBAL",1)~
END

I_C_T VICG1 4 NocareVic
== MWArnJ IF ~InParty("MWAriena") See("MWAriena") !IsValidForPartyDialog("Jaheira") !IsValidForPartyDialog("Minsc") !IsValidForPartyDialog("Nalia")~ THEN
 @261 DO ~SetGlobalTimer("ViconiaBurn","AR1000",30)~
END

I_C_T JAN 6 NostunbyFMBM
 == MWArnJ
IF ~InParty("MWAriena") See("MWAriena")~ THEN @262
 == JAN
 @263
END

I_C_T MOURNER1 4 sidewithnevin
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @264
END

I_C_T TIRDIR 5 Nohelptirdir
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @265
END

I_C_T ELGEA 0 takeransom
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @266
END

I_C_T GAAL 8 qwhynoattacknow
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @267
END

I_C_T TRFUED05 8 Trfuedalicom
 == MWArnJ IF ~!Global("Trfuedlurco","GLOBAL",1) InParty("MWAriena") See("MWAriena")~ THEN
 @268
END

I_C_T TRFUED01 8 Trfuedlurco
 == MWArnJ IF ~!Global("Trfuedalico","GLOBAL",1) InParty("MWAriena") See("MWAriena")~ THEN
 @268
END

I_C_T GAAL 8 qwhynoattacknow
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @267
END

I_C_T KALAH 1 Nocarecalledbeast
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @269
END

I_C_T UHKID01 2 Arcommentuhkid
== MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
@270
END

I_C_T UHKID01 3 Arcommentuhkid2
== MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
@271
END

I_C_T2 UHKID01 27 Couhkidswonly
== MWArnJ IF ~InParty("MWAriena") !Dead("MWAriena")~ THEN  @272
END

I_C_T UHGIBB01 0 Couhkidswandbe
 == MWArnJ IF ~InParty("MWAriena") !Dead("MWAriena")~ THEN
 @273 DO ~ActionOverride("MWAriena",Attack("UHGIBB01"))~
END

I_C_T2 HLSION 1 goeswherewewants
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @274
 == HLSION
 @275
 == MWArnJ
 @276
END

INTERJECT HLSION 2 arafighthlsion
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @277
END HLSION 3

INTERJECT HLSION 4 arafighthlsion2
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @278
 == HLSION
 @279
 == HLKETTA
 @280
 == HLSION
 @281
 == MWArnJ
 @282
END HLSION 3

INTERJECT HLSION 5 arafighthlsion3
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @283
END HLSION 3

I_C_T SEVPAT01 1 likebarfight
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @284
END

I_C_T KORGANJ 56 likebarfight2
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @284
 == KORGANJ
 @285
END

I_C_T RENAL 23 Aranogoodspy
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @286
END

I_C_T2 HAEGAN 1 killheagan1
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @287
END

I_C_T2 HAEGAN 2 killheagan2
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @288
END

I_C_T2 HAEGAN 3 killheagan3
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @288
END

I_C_T2 HAEGAN 5 killheagan4
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @288
END

I_C_T SLAVERM 0 killslaverm
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @289
END

I_C_T2 PPSAEM 59 Arahateppsaem
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @290
END

I_C_T MESSEN 5 ArAnatCo
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @291
END

I_C_T CELOGAN 40 ArAnatCo2
 == MWArnJ IF ~Global("ArAnatCo","GLOBAL",1) InParty("MWAriena") See("MWAriena")~ THEN
 @292
END

I_C_T CELOGAN 40 ArAnatCo3
 == MWArnJ IF ~!Global("ArAnatCo","GLOBAL",1) InParty("MWAriena") See("MWAriena")~ THEN
 @291 
END

I_C_T ANOMENJ 150 ArcommentAnquest
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @293
END

I_C_T VALYGAR 4 ArcommentVaquest
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @294
END

I_C_T2 VALYGAR 44 ArcommentVaquest2
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @295
END

INTERJECT TRPLE01 8 AranobelWi
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @296
 == TRPLE01
 @297
COPY_TRANS TRPLE01 18

I_C_T DELCIA 10 Armadatdelcia
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @298
== DELCIA
@299
== MWArnJ
@300 DO ~ClearAllActions()
ActionOverride("MWAriena",Attack("DELCIA")) ActionOverride("DELCIA",DisplayString(Myself,19571)) ActionOverride("Delcia",EscapeArea()) ActionOverride("KPSOLD01",SetNumTimesTalkedTo(1)) ActionOverride("KPSOLD01",Enemy())~
END

I_C_T DELCIA 30 Armadatdelcia2
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @301
== DELCIA
@299
== MWArnJ 
@300 DO ~ClearAllActions()
ActionOverride("MWAriena",Attack("DELCIA")) ActionOverride("DELCIA",DisplayString(Myself,19571)) ActionOverride("Delcia",EscapeArea()) ActionOverride("KPSOLD01",SetNumTimesTalkedTo(1)) ActionOverride("KPSOLD01",Enemy())~
END

I_C_T DELCIA 31 Armadatdelcia3
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @302
== DELCIA
@303
== MWArnJ
@300 DO ~ClearAllActions()
ActionOverride("MWAriena",Attack("DELCIA")) ActionOverride("DELCIA",DisplayString(Myself,19571)) ActionOverride("Delcia",EscapeArea()) ActionOverride("KPSOLD01",SetNumTimesTalkedTo(1)) ActionOverride("KPSOLD01",Enemy())~
END

I_C_T DELCIA 32 Armadatdelcia4
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @304
== DELCIA
@303
== MWArnJ
@300 DO ~ClearAllActions()
ActionOverride("MWAriena",Attack("DELCIA")) ActionOverride("DELCIA",DisplayString(Myself,19571)) ActionOverride("Delcia",EscapeArea()) ActionOverride("KPSOLD01",SetNumTimesTalkedTo(1)) ActionOverride("KPSOLD01",Enemy())~
END

I_C_T DELCIA 33 Armadatdelcia5
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @305
== DELCIA
@306
== NALIAJ
@307
== MWArnJ
@308
=
@300 DO ~ClearAllActions()
ActionOverride("MWAriena",Attack("DELCIA"))
ActionOverride("DELCIA",DisplayString(Myself,19571)) ActionOverride("Delcia",EscapeArea()) ActionOverride("KPSOLD01",SetNumTimesTalkedTo(1))
ActionOverride("KPSOLD01",Enemy())~
== NALIAJ
@309 DO ~ActionOverride("Nalia",Enemy())~
END

I_C_T DELCIA 16 Armadatdelcia6
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @310
== DELCIA
@306
== NALIAJ IF ~InParty("Nalia")~ THEN
@307
== MWArnJ IF ~InParty("Nalia")~ THEN
@308
= @300 DO ~ClearAllActions()
ActionOverride("MWAriena",Attack("DELCIA"))
ActionOverride("DELCIA",DisplayString(Myself,19571)) ActionOverride("Delcia",EscapeArea()) ActionOverride("KPSOLD01",SetNumTimesTalkedTo(1))
ActionOverride("KPSOLD01",Enemy())~
== NALIAJ IF ~InParty("Nalia")~ THEN
@309 DO ~ActionOverride("Nalia",Enemy())~
END

I_C_T FIRORC02 0 Armadatorc
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @311
END

I_C_T FIRORC02 0 Armadatorc
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @312
== FIRORC02
@313 DO ~ ActionOverride ("MWAriena",FaceObject("FIRORC03"))~
== MWArnJ
@314
== FIRORC03
@315
== MWArnJ
@316
== FIRORC02
@317
== MWArnJ
@318
== FIRORC03
@319 DO ~EscapeArea()~
== FIRORC02
@320 DO ~Enemy() ActionOverride("MWAriena",Attack("FIRORC02"))~
END

I_C_T UDSIMYAZ 5 Arpreparedto
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @321
END

I_C_T IMOEN2 22 Araindiff
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @322
END

I_C_T YOSHJ 113 Aramadatyosh
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @323
END

I_C_T UDSVIR08 1 mwarsvirf
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena") Global("ArienaFallen","GLOBAL",1)~ THEN
 @324
END

INTERJECT UDDROW04 4 mwaruddfal
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena") Global("ArienaFallen","GLOBAL",1)~ THEN
 @325
 == UDDROW04
 @326
 == MWArnJ
 @327
COPY_TRANS UDDROW04 8

I_C_T UDDROW04 4 mwaruddnfall
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena") !Global("ArienaFallen","GLOBAL",1)~ THEN
 @328
 == UDDROW04
 @329
END

I_C_T UDDROW16 1 mwarudddis
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @330
 == UDDROW16
 @331
 == MWArnJ
 @332
 == UDDROW16
 @333
 =
 @334
END

I_C_T UDSVIR05 19 nosearchsvif
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @335
END

I_C_T SUDEMIN 15 mwcomirplans
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena") !Global("ArienaRedemption","GLOBAL",1)~ THEN
 @336
END

I_C_T SUDEMIN 32 mwarnohelpsu
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena") !Global("ArienaRedemption","GLOBAL",1)~ THEN
 @337
END

I_C_T SUDEMIN 32 mwarhelpsu
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena") Global("ArienaRedemption","GLOBAL",1)~ THEN
 @338
END

I_C_T HELLJON 7 Weshallsee
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @339
END

I_C_T HELLJON 8 Lastperformance
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @339
END

I_C_T HELLJON 9 Lastperformance
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @339
END

I_C_T HELLJON 10 Lastperformance
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @339
END

I_C_T PLAYER1 16 onlymortal
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @340
END

I_C_T PLAYER1 25 ArinHell
== MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
@341
END

I_C_T PLAYER1 5 ArSlayCom
== MWArnJ IF ~IfValidForPartyDialog("MWAriena")~ THEN
@342
= @343
END

EXTEND_BOTTOM HPRELATE 24
IF ~OR(2) ReputationLT(Player1,10) Global("PaladinOrder","GLOBAL",3) InParty("MWAriena") Global("Arperqu","GLOBAL",4)~ THEN REPLY @344 EXTERN HPRELATE ArQuNoOrHelp
IF ~OR(2) ReputationGT(Player1,9) Global("PaladinOrder","GLOBAL",1) InParty("MWAriena") Global("Arperqu","GLOBAL",4)~ THEN REPLY @345 EXTERN HPRELATE ArQuOrHelp
IF ~InParty("MWAriena") Global("Arperqu","GLOBAL",4)~ THEN REPLY @346 EXTERN HPRELATE HPCareArQu
END

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("MWAriena") See("MWAriena") Global("AskAraalong","GLOBAL",0)~ THEN DO ~SetGlobal("AskAraalong","GLOBAL",1)~ GOTO PlayeraskAriena
END

APPEND PLAYER1
IF ~~ PlayeraskAriena
SAY @347
IF ~~ THEN REPLY @348 EXTERN MWArnJ Arlikefebl 
IF ~Global("ArienaRedemption","GLOBAL",1)~ THEN REPLY @349 EXTERN MWArnJ thwisecom
IF ~~ THEN REPLY @350 EXTERN MWArnJ moveontoI
END
END

APPEND MWArnJ
IF ~~ THEN BEGIN Arlikefebl
SAY @351
IF ~~ GOTO ArrageToL
END

IF ~~ THEN BEGIN thwisecom 
SAY @352
IF ~~ GOTO ArrageToL
END

IF ~~ THEN BEGIN thwisecom2
SAY @353
IF ~~ GOTO ArrageToL
END

IF ~~ THEN BEGIN moveontoI
SAY @354
IF ~~ GOTO ArrageToL
END

IF ~~ THEN BEGIN ArrageToL
SAY @355
COPY_TRANS PLAYER1 33
END
END

APPEND SALVANAS
IF ~!InPartySlot(LastTalkedToBy,0)
Name("MWAriena",LastTalkedToBy)
Global("Sal_Ariena","LOCALS",0)~ THEN BEGIN Lust_Ariena
SAY  @356 
IF ~~ THEN DO ~SetGlobal("Sal_Ariena","LOCALS",1)~ EXTERN MWArnJ Ariena_sexy
END
 
IF ~!InPartySlot(LastTalkedToBy,0)
Name("MWAriena",LastTalkedToBy)
Global("Sal_Ariena","LOCALS",1)~ THEN BEGIN tough_babe 
SAY @357
IF ~~ THEN DO ~ActionOverride("Salvanas",RunAwayFrom("MWAriena",30))~ EXIT
END
END

CHAIN MWArnJ Ariena_pulp
@358
== BERTRAND @359 
== MWArnJ @360 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("MWArbert")~
EXIT

APPEND BERTRAND
IF WEIGHT #-99~ Name("MWAriena",LastTalkedToBy)
Global("Bert_Ariena","LOCALS",0)~ THEN BEGIN Wow_Ariena
SAY  @361 
IF ~~ THEN DO ~SetGlobal("Bert_Ariena","LOCALS",1)~ EXTERN MWArnJ Ariena_pulp
END
END

APPEND MWKidJ
IF ~Global("aasimarmom","GLOBAL",2)
  Global("KidCoArQue","LOCALS",0)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN KidCoArQu
 SAY @362
=
@363
  IF ~~ THEN DO ~SetGlobal("KidCoArQue","LOCALS",1)~ EXTERN MWArnJ knowmoreaas
END
END

APPEND HAERDAJ
IF ~Global("HaeCoArQue","GLOBAL",0)
  Global("aasimarmom","GLOBAL",2)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN HaeCoArQu
 SAY @364
  IF ~~ THEN DO ~SetGlobal("HaeCoArQue","GLOBAL",1)~ EXTERN MWArnJ knowmoreaas
END

IF ~Global("HaeCoArQue","GLOBAL",0)
  Global("aasimarmom","GLOBAL",2)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN HaeCoArQu2
 SAY @365
  IF ~~ THEN DO ~SetGlobal("HaeCoArQue","GLOBAL",1)~ EXTERN MWArnJ knowmoreaas
END
END

APPEND KELDORJ
IF ~Global("KelCoArQue","GLOBAL",0)
  Global("aasimarmom","GLOBAL",2)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN KelCoArQu
 SAY @366
  IF ~~ THEN DO ~SetGlobal("KelCoArQue","GLOBAL",1)~ EXTERN MWArnJ knowmoreaas
END
END

APPEND EDWINJ
IF ~Global("EdwCoArQue","GLOBAL",0)
  Global("aasimarmom","GLOBAL",2)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN EdwCoArQu
 SAY @367
  IF ~~ THEN DO ~SetGlobal("EdwCoArQue","GLOBAL",1)~ EXTERN MWArnJ knowmoreaas
END
END

APPEND IMOEN2J
IF ~Global("ImoCoArQue","GLOBAL",0)
  Global("aasimarmom","GLOBAL",2)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN ImoCoArQu
 SAY @368
  IF ~~ THEN DO ~SetGlobal("ImoCoArQue","GLOBAL",1)~ EXTERN MWArnJ knowmoreaas
END
END

APPEND ANOMENJ
IF ~Global("AnoCoArQue","GLOBAL",0)
  Global("aasimarmom","GLOBAL",2)  
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN AnoCoArQu
 SAY @369
  IF ~~ THEN DO ~SetGlobal("AnoCoArQue","GLOBAL",1)~ EXTERN MWArnJ knowmoreaas
END

IF ~Global("AnoCoArQue","GLOBAL",0)
  Global("aasimarmom","GLOBAL",2)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN AnoCoArQu2
 SAY @370
  IF ~~ THEN DO ~SetGlobal("AnoCoArQue","GLOBAL",1)~ EXTERN MWArnJ knowmoreaas
END
END

APPEND MWIANJ
IF ~Global("aasimarmom","GLOBAL",2)
  Global("IanCoArQue","GLOBAL",0)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN IanCoArQu
 SAY @371
  IF ~~ THEN DO ~SetGlobal("IanCoArQue","GLOBAL",1)~ EXTERN MWArnJ knowmoreaas
END
END

APPEND MWKIRIJ
IF ~Global("aasimarmom","GLOBAL",2)
  Global("KirCoArQue","GLOBAL",0)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN KirCoArQu
 SAY @372
=
@373
  IF ~~ THEN DO ~SetGlobal("KirCoArQue","GLOBAL",1)~ EXTERN MWArnJ knowmoreaas
END
END
