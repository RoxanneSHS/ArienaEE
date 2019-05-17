BEGIN MWBARN25

CHAIN IF ~Global("MWBAKL251","GLOBAL",0)
InParty("MWAriena")
CombatCounter(0)
Global("RaOrKill","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BKELDO25 MWConAKL251
@0 DO ~SetGlobal("MWBAKL251","GLOBAL",1)~
== MWBArn25 @1
== BKELDO25 @2 DO ~ActionOverride("Keldorn",LeaveParty()) ActionOverride("Keldorn",Enemy()) ActionOverride("Keldorn",Attack(Player1))~
EXIT

CHAIN IF ~Global("MWBAKL252","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("ArienaRedemption","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BKELDO25 MWConAKL252
@3 DO ~SetGlobal("MWBAKL252","GLOBAL",1)~
== MWBArn25 @4
== BKELDO25 @5
== MWBArn25 @6
== BKELDO25 @7
== MWBArn25 @8
== BKELDO25 @9
== MWBArn25 @10
== BKELDO25 @11
== MWBArn25 @12
== BKELDO25 @13
EXIT

CHAIN IF ~Global("MWBAKL253","GLOBAL",0)
InParty("Keldorn")
See("Keldorn")
CombatCounter(0)
!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN MWBArn25 MWConAKL253
@14 DO ~SetGlobal("MWBAKL253","GLOBAL",1)~
== BKELDO25 @15
== MWBArn25 @16
== BKELDO25 @17
== MWBArn25 @18
== BKELDO25 @19
== MWBArn25 @20
EXIT

CHAIN IF ~Global("MWBAAN251","GLOBAL",0)
InParty("MWAriena")
CombatCounter(0)
Global("RaOrKill","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BANOME25 MWConAAN251
@21 DO ~SetGlobal("MWBAAN251","GLOBAL",1)~
== MWBArn25 @1
== BANOME25 @2 DO ~ActionOverride("Anomen",LeaveParty()) ActionOverride("Anomen",Enemy()) ActionOverride("Anomen",Attack(Player1))~
EXIT

CHAIN IF ~Global("MWBAAN252","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!AreaCheck("AR4000")
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BANOME25 MWConAAN252
@22 DO ~SetGlobal("MWBAAN252","GLOBAL",1)~
== MWBArn25 @23
== BANOME25 @24
== MWBArn25 @25
== BANOME25 @26
EXIT

CHAIN IF ~Global("MWBAMA251","GLOBAL",0)
InParty("MWAriena")
CombatCounter(0)
Global("RaOrKill","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BMAZZY MWConAMA251
@27 DO ~SetGlobal("MWBAMA251","GLOBAL",1)~
== MWBArn25 @1
== BMAZZY25 @28 DO ~ActionOverride("Mazzy",LeaveParty()) ActionOverride("Mazzy",Enemy()) ActionOverride("Mazzy",Attack(Player1))~
EXIT

CHAIN IF ~Global("MWBAMA252","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!Global("ArienaFallen","GLOBAL",1)
GlobalGT("chapter","GLOBAL",%bg2_chapter_8%)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BMAZZY25 MWConAMA252
@29 DO ~SetGlobal("MWBAMA252","GLOBAL",1)~
== BMAZZY25 IF ~Global("ArienaRedemption","GLOBAL",1)~ THEN @30
== MWBArn25 IF ~Global("ArienaRedemption","GLOBAL",1)~ THEN @31
== BMAZZY25 @32
== MWBArn25 @33
== BMAZZY25 @34
== MWBArn25 @35
== BMAZZY25 @36
EXIT

CHAIN IF ~Global("MWBAMI251","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("ArienaFallen","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BMINSC25 MWConAMI251
@37
= @38 DO ~SetGlobal("MWBAMI251","GLOBAL",1)~
== MWBArn25 @39
== BMINSC25 @40
== MWBArn25 @41 DO ~ActionOverride("Minsc",LeaveParty()) ActionOverride("Minsc",Enemy()) ActionOverride("Minsc",Attack("MWAriena"))~
EXIT

CHAIN IF ~Global("MWBAMI252","GLOBAL",0)
InParty("Minsc")
See("Minsc")
CombatCounter(0)
!StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN MWBArn25 MWConAMI252
@42 DO ~SetGlobal("MWBAMI252","GLOBAL",1)~
== BMINSC25 @43
== MWBArn25 @44
== BMINSC25 @45
== MWBArn25 @46
== BMINSC25 @47
== MWBArn25 @48
== BMINSC25 @49
== MWBArn25 @50
== BMINSC25 @51
EXIT

CHAIN IF ~Global("MWBAAE251","GLOBAL",0)
InParty("Aerie")
See("Aerie")
CombatCounter(0)
!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN MWBArn25 MWConAAE251
@52 DO ~SetGlobal("MWBAAE251","GLOBAL",1)~
== BAERIE25 @53
== MWBArn25 @54
EXIT

CHAIN IF ~Global("MWBAH251","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BHAERD25 MWConAH251
@55 DO ~SetGlobal("MWBAH251","GLOBAL",1)~
 == MWBArn25 @56
 == BHAERD25 @57
 == MWBArn25 @58
 == BHAERD25 @59
EXIT

CHAIN IF ~Global("MWBAE25","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
See(Player1)
CombatCounter(0)
AreaCheck("AR5000")
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BEDWIN25 MWConAE25
@60 DO ~SetGlobal("MWBAE25","GLOBAL",1)~
 == BEDWIN25 @61
= @62
 == MWBArn25 @63
 == BEDWIN25 @64
EXIT

CHAIN IF ~Global("MWBAKO25","GLOBAL",0)
InParty("Korgan")
See("Korgan")
CombatCounter(0)
!StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN MWBArn25 MWConAKO25
@65 DO ~SetGlobal("MWBAKO25","GLOBAL",1)~
== BKORGA25 @66
== MWBArn25 @67
== BKORGA25 @68
== MWBArn25 @69
== BKORGA25 @70
== MWBArn25 @71
== BKORGA25 @72
== MWBArn25 @73
== BKORGA25 @74
EXIT

CHAIN IF ~Global("MWBAV251","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
Alignment("Viconia",NEUTRAL)
Global("ArienaRedemption","GLOBAL",1)
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BVICON25 MWConAV251
@75 DO ~SetGlobal("MWBAV251","GLOBAL",1)~
== MWBArn25 @76
== BVICON25 @77
== MWBArn25 @78
== BVICON25 @79
= @80
== MWBArn25 @81
== BVICON25 @82
== BKELDO25 IF ~InParty("Keldorn")~ THEN @83 
== BVICON25 @84
EXIT

CHAIN IF ~Global("MWBAV252","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BVICON25 MWConAV252
@85 DO ~SetGlobal("MWBAV252","GLOBAL",1)~
== MWBArn25 @86
== BVICON25 @87
== MWBArn25 @88
== BVICON25 @89
== MWBArn25 @90
== BVICON25 @91
== MWBArn25 @92
== BVICON25 @93
EXIT

CHAIN IF ~Global("MWBAS251","GLOBAL",0)
InParty("Sarevok")
See("Sarevok")
CombatCounter(0)
!StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN MWBArn25 MWConAS251
@94 DO ~SetGlobal("MWBAS251","GLOBAL",1)~
== BSAREV25 @95
== MWBArn25 @96
== BSAREV25 @97
== MWBArn25 @98
== BSAREV25 @99
EXIT

CHAIN IF ~Global("MWBAS252","GLOBAL",0)
InParty("Sarevok")
See("Sarevok")
Alignment("Sarevok",CHAOTIC_GOOD)
CombatCounter(0)
!StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN MWBArn25 MWConAS252
@100 DO ~SetGlobal("MWBAS252","GLOBAL",1)~
== BSAREV25 @101
== MWBArn25 IF ~OR(2) Global("ArienaRedemption","GLOBAL",1) Global("ArienaFallen","GLOBAL",1)~ THEN @102
== MWBArn25 IF ~!Global("ArienaRedemption","GLOBAL",1) !Global("ArienaFallen","GLOBAL",1)~ THEN @103
== BSAREV25 @104
== MWBArn25 @105
EXIT

CHAIN IF ~Global("MWBAIM25","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BIMOEN25 MWConAIM25
@106 DO ~SetGlobal("MWBAIM25","GLOBAL",1)~
== MWBArn25 @107
== BIMOEN25 @108
== MWBArn25 @109
= @110
== BIMOEN25 @111
== MWBArn25 @112
== BIMOEN25 @113
== MWBArn25 @114
== BIMOEN25 @115
EXIT

CHAIN IF ~Global("MWBAJ25","GLOBAL",0)
InParty("Jan")
See("Jan")
CombatCounter(0)
!StateCheck("Jan",CD_STATE_NOTVALID)~ THEN MWBArn25 MWConAJ25
@116 DO ~SetGlobal("MWBAJ25","GLOBAL",1)~
== BJAN25 @117
== MWBArn25 @118
== BJAN25 @119
== BJAN25 @120
EXIT

CHAIN IF ~Global("MWBAVA25","GLOBAL",0)
InParty("Valygar")
See("Valygar")
OR(3)
AreaCheck("AR6400")
AreaCheck("AR6300")
AreaCheck("AR6111")
CombatCounter(0)
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN MWBArn25 MWConAVa25
@121 DO ~SetGlobal("MWBAVA25","GLOBAL",1)~
== BVALYG25 @122
== MWBArn25 @123
== BVALYG25 @124
== MWBArn25 @125
== BVALYG25 @126
EXIT

CHAIN IF ~Global("MWBAJH25","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BJAHEI25 MWConAJH25
@127 DO ~SetGlobal("MWBAJH25","GLOBAL",1)~
== MWBArn25 @107
== BJAHEI25 @128
== MWBArn25 @129
== BJAHEI25 @130
EXIT

CHAIN IF ~Global("MWBAC25","GLOBAL",0)
InParty("Cernd")
See("Cernd")
HPPercentLT(Myself,10)
HPPercentLT("Cernd",95)
CombatCounter(0)
!StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN MWBArn25 MWConAC25
@131 DO ~SetGlobal("MWBAC25","GLOBAL",1)~
== BCERND25 @132
== MWBArn25 @133
== BCERND25 @134
== MWBArn25 @135
== BCERND25 @136
== MWBArn25 @137
== BCERND25 @138
EXIT

CHAIN IF ~Global("MWBAN25","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
LevelGT("Nalia",19)
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BNALIA25 MWConAN25
@139 DO ~SetGlobal("MWBAN25","GLOBAL",1)~
== MWBArn25 @140
== BNALIA25 @141
== MWBArn25 @142
== BNALIA25 @143
== MWBArn25 @144
== BNALIA25 @145
EXIT

CHAIN IF ~Global("MWBAK25","GLOBAL",0)
InParty("MWKido")
See("MWKido")
CombatCounter(0)
!StateCheck("MWKido",CD_STATE_NOTVALID)~ THEN MWBArn25 MWConAK25
@146 DO ~SetGlobal("MWBAK25","GLOBAL",1)~
== MWBKid25 @147
== MWBArn25 @148
== MWBKid25 IF ~Gender(Player1,Male)~ THEN @149
== MWBKid25 IF ~Gender(Player1,Female)~ THEN @150
== MWBArn25 @151
EXIT
