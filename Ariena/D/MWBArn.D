BEGIN MWBARN

CHAIN IF ~Global("MWBAMI1","LOCALS",0)
InParty("Minsc")
See("Minsc")
CombatCounter(0)
!StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN MWBArn MWConAMI1
@0 DO ~SetGlobal("MWBAMI1","LOCALS",1)~
== BMINSC @1
== MWBArn @2
== BMINSC @3
== MWBArn @4
== BMINSC @5
== MWBArn @6
== BMINSC @7
EXIT

CHAIN IF ~Global("MWBAMI2","LOCALS",0)
InParty("Minsc")
See("Minsc")
CombatCounter(0)
Global("MWBAMI1","LOCALS",1)
!StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN MWBArn MWConAMI2
@8 DO ~SetGlobal("MWBAMI2","LOCALS",1)~
== BMINSC  @9
== MWBArn @10
== BMINSC @11
== MWBArn @12
EXIT

CHAIN IF ~Global("MWBAJH1","LOCALS",0)
InParty("Jaheira")
See("Jaheira")
CombatCounter(0)
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN MWBArn MWConAJH1
 @13
DO ~SetGlobal("MWBAJH1","LOCALS",1)~
== BJAHEIR @14
== MWBArn @15
== BJAHEIR @16
== MWBArn @17
== BJAHEIR @18
== MWBArn @19
== BJAHEIR @20
== MWBArn @21
== BJAHEIR @22
== MWBArn @23
== BJAHEIR @24
== MWBArn @25
== BJAHEIR @26
== MWBArn @27
EXIT

CHAIN IF ~Global("MWBAJH2","LOCALS",0)
InParty("Jaheira")
See("Jaheira")
CombatCounter(0)
Global("MWBAJH1","LOCALS",1)
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN MWBArn MWConAJH2
@28
DO ~SetGlobal("MWBAJH2","LOCALS",1)~
== BJAHEIR @29
== MWBArn @30
== BJAHEIR @31
EXIT

CHAIN IF ~Global("MWBAJH3","LOCALS",0)
InParty("Jaheira")
See("Jaheira")
CombatCounter(0)
Global("MWBAJH1","LOCALS",1)
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN MWBArn MWConAJH3
@32
DO ~SetGlobal("MWBAJH3","LOCALS",1)~
== BJAHEIR @33
== MWBArn @34
== BJAHEIR @35
== MWBArn @36
 = @37
== BJAHEIR @38
== MWBArn @39
== BJAHEIR @40
== MWBArn @41
EXIT

CHAIN IF ~Global("MWBAKO1","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BKORGAN MWConAKO1
@42
DO ~SetGlobal("MWBAKO1","GLOBAL",1)~
== MWBArn @43
== BKORGAN @44
== MWBArn @45
== BKORGAN @46
EXIT

CHAIN IF ~Global("MWBAKO2","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAKO1","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BKORGAN MWConAKO2
@47
DO ~SetGlobal("MWBAKO2","GLOBAL",1)~
== MWBArn @48
== BKORGAN @49
== MWBArn @50
== BKORGAN @51
== MWBArn @52
== BKORGAN @53
== MWBArn @54
EXIT

CHAIN IF ~Global("MWBAKO3","LOCALS",0)
InParty("Korgan")
See("Korgan")
AreaType(CITY)
CombatCounter(0)
Global("MWBAKO1","GLOBAL",1)
Global("MWBAKO2","GLOBAL",1) 
!StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN MWBArn MWConAKO3
@55
DO ~SetGlobal("MWBAKO3","LOCALS",1)~
== BKORGAN @56
== MWBArn @57
== BKORGAN @58
== MWBArn @59
== BKORGAN @60
EXIT

CHAIN  IF ~Global("MWBAKO4","LOCALS",0)
InParty("Korgan")
See("Korgan")
CombatCounter(0)
Global("MWBAKO1","GLOBAL",1)
Global("MWBAKO2","GLOBAL",1)
Global("MWBAKO3","LOCALS",1) 
!StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN MWBArn MWConAKO4
@61
DO ~SetGlobal("MWBAKO4","LOCALS",1)~
== BKORGAN @62
== MWBArn @63
== BKORGAN @64
== MWBArn @65
== BKORGAN @66
EXIT

CHAIN IF ~Global("MWBAIM1","GLOBAL",0)
InParty("Imoen2")
See("Imoen2")
CombatCounter(0)
!StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN MWBArn MWConAIM1
@67
DO ~SetGlobal("MWBAIM1","GLOBAL",1)~
== IMOEN2J @68
== MWBArn @69
== IMOEN2J @70
== MWBArn @71
== BAERIE IF ~InParty("Aerie") Global("sympathyfora","GLOBAL",1)~ THEN @72
== IMOEN2J @73
== MWBArn @74
EXIT

CHAIN IF ~Global("MWBAIM2","GLOBAL",0)
InParty("Imoen2")
See("Imoen2")
CombatCounter(0)
Global("MWBAIM1","GLOBAL",1)
!StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN MWBArn MWConAIM2
 @75
DO ~SetGlobal("MWBAIM2","GLOBAL",1)~
== IMOEN2J @76
== MWBArn @77
== BMINSC IF ~InParty("Minsc")~ THEN @78
== MWBArn IF ~InParty("Minsc") Global("badcompanion","LOCALS",1)~ THEN @79
== MWBArn IF ~InParty("Minsc") !Global("badcompanion","LOCALS",1)~ THEN @80
== IMOEN2J @81
== MWBArn @82
== IMOEN2J @83
== MWBArn @84
== IMOEN2J @85
== MWBArn @86
== IMOEN2J @87
== MWBArn @88
EXIT

CHAIN IF ~Global("MWBAY1","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BYOSHIM MWConAY1
@89
DO ~SetGlobal("MWBAY1","GLOBAL",1)~
== MWBArn @90
== BYOSHIM @91
== MWBArn @92
== BYOSHIM @93
EXIT

CHAIN IF ~Global("MWBAY2","GLOBAL",0)
InParty("Yoshimo")
See("Yoshimo")
CombatCounter(0)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN MWBArn MWConAY2
@94
DO ~SetGlobal("MWBAY2","GLOBAL",1)~
== BYOSHIM @95
 = @96
 = @97
 = @98
== MWBArn @99
== BYOSHIM @100
== MWBArn @101
EXIT

CHAIN IF ~Global("MWBAAE1","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BAERIE MWConAAE1
 @102
DO ~SetGlobal("MWBAAE1","GLOBAL",1)~
== MWBArn @103
== BAERIE @104
== IMOEN2J IF ~InParty("Imoen") Global("noneedsister","GLOBAL",1)~ THEN @105
== MWBArn @106
== BAERIE @107
== MWBArn @108
END
IF ~~ THEN REPLY @109 EXIT
IF ~~ THEN REPLY @110 EXIT 
IF ~~ THEN REPLY @111 EXIT 
IF ~~ THEN REPLY @112 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT 

CHAIN IF ~Global("MWBAAE2","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
HPGT("Aerie",18)
CombatCounter(0)
Global("MWBAAE1","GLOBAL",1)  
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BAERIE MWConAAE2
@113
DO ~SetGlobal("MWBAAE2","GLOBAL",1) ClearAllActions()~
== MWBArn @114 DO ~ActionOverride("MWAriena",MoveToObject("Aerie"))~
== BAERIE @115 DO ~ActionOverride("Aerie",Recoil())~
== MWBArn @116 DO ~ActionOverride("MWAriena",SwingOnce())~
 = @117
END
IF ~~ THEN REPLY @118 EXTERN MWBArn AesuArle
IF ~CheckStatGT(PLAYER1,14,CHR)~ THEN REPLY @119 EXTERN MWBArn AesuArst
IF ~CheckStatLT(PLAYER1,15,CHR)~ THEN REPLY @119 EXTERN MWBArn ArnobkiAe
IF ~InParty("Minsc")~ THEN REPLY @120 EXTERN MWBArn MinsavAer
IF ~InParty("HaerDalis") !InParty("Minsc")~ THEN REPLY @120 EXTERN MWBArn HaesavAer
IF ~InParty("Keldorn") !InParty("HaerDalis") !InParty("Minsc")~ THEN REPLY @120 EXTERN MWBArn KelsavAer
IF ~InParty("Mazzy") !InParty("Keldorn") !InParty("HaerDalis") !InParty("Minsc")~ THEN REPLY @120 EXTERN MWBArn MazsavAer
IF ~!InParty("Mazzy") !InParty("Keldorn") !InParty("HaerDalis") !InParty("Minsc")~ THEN REPLY @120 EXTERN MWBArn ArkillAe

CHAIN IF ~Global("MWBAAE2","GLOBAL",1)
InParty("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN MWBArn AesuArle
@121
DO ~LeaveParty() EscapeArea() SetGlobal("MWBAAE2","GLOBAL",2)~
== BAERIE @122
EXIT

CHAIN IF ~Global("MWBAAE2","GLOBAL",1)
InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN MWBArn AesuArst
@123
DO ~SetGlobal("MWBAAE2","GLOBAL",2)~
== BAERIE @122
EXIT

CHAIN IF ~Global("MWBAAE2","GLOBAL",1)
InParty("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN MWBArn ArnobkiAe
@124
DO ~SetGlobal("MWBAAE2","GLOBAL",2)~
== MWBArn @125
DO ~ActionOverride("Aerie",Kill(Myself))~
END
IF ~Global("Arinumkic","GLOBAL",0)~ THEN REPLY @126 DO ~ReputationInc(-1)~ EXTERN MWArnP 0
IF ~Global("Arinumkic","GLOBAL",1)~ THEN REPLY @126 DO ~ReputationInc(-1)~ EXTERN MWArnP 2
IF ~~ THEN REPLY @127 DO ~ReputationInc(-2)~ EXIT
IF ~~ THEN REPLY @128 DO ~ReputationInc(-2)~ EXIT

CHAIN IF ~Global("MWBAAE2","GLOBAL",1)
InParty("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN MWBArn ArkillAe
 @129
DO ~ActionOverride("Aerie",Kill(Myself)) SetGlobal("MWBAAE2","GLOBAL",2)~
== MWBArn @130
END
IF ~Global("Arinumkic","GLOBAL",0)~ THEN REPLY @131 DO ~ReputationInc(-1)~ EXTERN MWArnP 0
IF ~Global("Arinumkic","GLOBAL",1)~ THEN REPLY @131 DO ~ReputationInc(-1)~ EXTERN MWArnP 2
IF ~~ THEN REPLY @132 DO ~ReputationInc(-2)~ EXIT
IF ~~ THEN REPLY @133 DO ~ReputationInc(-2)~ EXIT

CHAIN IF ~Global("MWBAAE2","GLOBAL",1)
InParty("Aerie")
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN MWBArn MinsavAer
@134
DO ~SetGlobal("MWBAAE2","GLOBAL",2) ActionOverride("Minsc",MoveToObject("MWAriena"))~
== BMINSC @135
== MWBArn @136
== BMINSC @137
== MWBArn @138 DO ~ActionOverride("Aerie",PlayDead(60))~
== BAERIE @139 DO ~ActionOverride("MWAriena",ApplyDamagePercent("Aerie",20,CRUSHING))~
== BMINSC @140
EXIT

CHAIN IF ~Global("MWBAAE2","GLOBAL",1)
InParty("Aerie")
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN MWBArn HaesavAer
@141
DO ~SetGlobal("MWBAAE2","GLOBAL",2) ActionOverride("Haerdalis",MoveToObject("MWAriena"))~
== BHAERDA @142
== MWBArn @143
== BHAERDA @144
== MWBArn @145
== BAERIE @146 DO ~ActionOverride("MWAriena", ApplyDamagePercent("Aerie",15,CRUSHING))~
== BHAERDA @147
EXIT

CHAIN IF ~Global("MWBAAE2","GLOBAL",1)
InParty("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN MWBArn KelsavAer
@148
DO ~SetGlobal("MWBAAE2","GLOBAL",2) ActionOverride("Keldorn",MoveToObject("MWAriena"))~
== BKELDOR @149
== MWBArn @150 DO ~ActionOverride("Aerie",PlayDead(60))~
== BKELDOR @151
=
@152 DO ~ActionOverride("MWAriena",ApplyDamagePercent("Aerie",20,CRUSHING))~
== BAERIE @153
== BKELDOR @154
EXIT

CHAIN IF ~Global("MWBAAE2","GLOBAL",1)
InParty("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN MWBArn MazsavAer
@155
DO ~SetGlobal("MWBAAE2","GLOBAL",2) ActionOverride("Mazzy",MoveToObject("MWAriena"))~
== BMAZZY @156
== MWBArn @157
== BMAZZY @158
== MWBArn @159
== BMAZZY @160
== MWBArn @161 DO ~ActionOverride("Aerie",PlayDead(60))~
== BAERIE @162 DO ~ActionOverride("MWAriena",ApplyDamagePercent("Aerie",25,CRUSHING))~
== BMAZZY @163
== BAERIE @164
EXIT

CHAIN IF ~Global("MWBAJ1","LOCALS",0) 
InParty("Jan")
See("Jan")
CombatCounter(0)
!StateCheck("Jan",CD_STATE_NOTVALID)~ THEN MWBArn MWConAJ1
@165
DO ~SetGlobal("MWBAJ1","LOCALS",1)~
== BJAN @166
== MWBArn @167
== BJAN @168
== MWBArn @169
EXIT

CHAIN IF ~Global("MWBAJ2","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAJ1","LOCALS",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BJAN MWConAJ2
@170
DO ~SetGlobal("MWBAJ2","GLOBAL",1)~
== MWBArn @171
== BJAN @172
== MWBArn @173
== BJAN @174
== MWBArn @175
== BJAN @176
== MWBArn IF ~!InParty("Aerie")~ THEN @177
== MWBArn IF ~InParty("Aerie")~ THEN @178
EXIT

CHAIN IF ~Global("MWBAKL1","GLOBAL",0)
InParty("Keldorn")
See("Keldorn")
CombatCounter(0)
!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN MWBArn MWConAKL1
@179 DO ~SetGlobal("MWBAKL1","GLOBAL",1)~
== BKELDOR @180
== MWBArn @181
== BKELDOR @182
== MWBArn @183
== BKELDOR @184
EXIT

CHAIN IF ~Global("MWBAKL2","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BKELDOR MWConAKL2
@185
DO ~SetGlobal("MWBAKL2","GLOBAL",1)~
== MWBArn @186
== BKELDOR @187
== MWBArn @188
== BKELDOR @189
== MWBArn @190
== BKELDOR @191
== MWBArn @192
== BKELDOR @193
== MWBArn @194
EXIT

CHAIN IF ~Global("MWBAKL3","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAKL2","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BKELDOR MWConAKL3
@195
DO ~SetGlobal("MWBAKL3","GLOBAL",1)~
== MWBArn @196
== BKELDOR @197
== MWBArn @198
== BKELDOR @199
== MWBArn @200
== BKELDOR @201
EXIT

CHAIN IF ~Global("MWBAKL4","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("ArienaRedemption","GLOBAL",1)
Global("MWBAKL2","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BKELDOR MWConAKL4
@202 DO ~SetGlobal("MWBAKL4","GLOBAL",1)~
== MWBArn @203
== BKELDOR @204
== MWBArn @205
== BKELDOR @206
EXIT

CHAIN IF ~Global("MWBAKL5","GLOBAL",0)
InParty("MWAriena")
CombatCounter(0)
Global("RaOrKill","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BKELDOR MWConAKL5
@207 DO ~SetGlobal("MWBAKL5","GLOBAL",1)~
== MWBArn @208
== BKELDOR @209 DO ~ActionOverride("Keldorn",LeaveParty()) ActionOverride("Keldorn",Enemy()) ActionOverride("Keldorn",Attack(Player1))~
EXIT

CHAIN IF ~Global("MWBAAN1","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BANOMEN MWConAAN1
@210
DO ~SetGlobal("MWBAAN1","GLOBAL",1)~
== MWBArn @211
== BANOMEN @212
== MWBArn @213
== BANOMEN @214
== MWBArn @215
== BANOMEN @216
== MWBArn @217
== BANOMEN @218
EXIT

CHAIN IF ~Global("MWBAAN2","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAAN1","GLOBAL",1)
Global("AnomenIsKnight","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BANOMEN MWConAAN2
@219
DO ~SetGlobal("MWBAAN2","GLOBAL",1)~
== MWBArn @220
== BANOMEN @221
== MWBArn @222
== BANOMEN @223
== MWBArn @224
EXIT

CHAIN IF ~Global("MWBAAN3","GLOBAL",0)
InParty("MWAriena")
CombatCounter(0)
Global("RaOrKill","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BANOMEN MWConAAN3
@225 DO ~SetGlobal("MWBAAN3","GLOBAL",1)~
== MWBArn @208
== BANOMEN @209 DO ~ActionOverride("Anomen",LeaveParty()) ActionOverride("Anomen",Enemy()) ActionOverride("Anomen",Attack(Player1))~
EXIT

CHAIN IF ~Global("MWBAAN4","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAAN1","GLOBAL",1)
Global("MWBAAN2","GLOBAL",1)
Global("ArienaRedemption","GLOBAL",1)
Global("AnomenIsKnight","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BANOMEN MWConAAN4
@226
DO ~SetGlobal("MWBAAN4","GLOBAL",1)~
== MWBArn @227
== BANOMEN @228
== MWBArn @229
== BANOMEN @230
= @231
== MWBArn @232
EXIT

CHAIN IF ~Global("MWBAAN5","GLOBAL",0)
InParty("Anomen")
See("Anomen")
CombatCounter(0)
Global("MWBAAN1","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",1)
!StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN MWBArn MWConAAN5
@233
DO ~SetGlobal("MWBAAN5","GLOBAL",1)~
== BANOMEN @234
== MWBArn @235
== BANOMEN @236
== MWBArn @237
== BANOMEN @238
== MWBArn @224
EXIT

CHAIN IF ~Global("MWBAAN6","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAAN1","GLOBAL",1)
Global("MWBAAN5","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",1)
OR(2)
Global("ArienaRedemption","GLOBAL",1)
Global("ArienaFallen","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BANOMEN MWConAAN6
@239
DO ~SetGlobal("MWBAAN6","GLOBAL",1)~
== MWBArn @240
== BANOMEN @241
EXIT

CHAIN IF ~Global("MWBAV1","LOCALS",0)
InParty("Viconia")
See("Viconia")
CombatCounter(0)
!StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN MWBArn MWConAV1
@242
DO ~SetGlobal("MWBAV1","LOCALS",1)~
== BVICONI @243
== MWBArn @244
== BVICONI @245
== MWBArn @246
== BVICONI @247
EXIT

CHAIN IF ~Global("MWBAV2","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAV1","LOCALS",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BVICONI MWConAV2
@248
DO ~SetGlobal("MWBAV2","GLOBAL",1)~
== MWBArn @249
== BVICONI @250
= @251
== BANOMEN IF ~InParty("Anomen")~ THEN @252
== BVICONI IF ~InParty("Anomen")~ THEN @253
== MWBArn @254
== BVICONI @255
== MWBArn @256
== BVICONI @257
EXIT

CHAIN IF ~Global("MWBAN1","LOCALS",0)
InParty("Nalia")
See("Nalia")
CombatCounter(0)
!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN MWBArn MWConAN1
@258
DO ~SetGlobal("MWBAN1","LOCALS",1)~
== BNALIA @259
== MWBArn @260
== BNALIA @261
== MWBArn @262
== BNALIA @263
== MWBArn @264
== BNALIA @265
== BNALIA IF ~!Global("NaliaKeepPlot","GLOBAL",1)~ THEN @266
== MWBArn IF ~!Global("NaliaKeepPlot","GLOBAL",1)~ THEN @267
== BNALIA IF ~!Global("NaliaKeepPlot","GLOBAL",1)~ THEN @268
== BNALIA IF ~Global("NaliaKeepPlot","GLOBAL",1) !Global("PCKeepOwner","GLOBAL",1)~ THEN @269
== MWBArn IF ~Global("NaliaKeepPlot","GLOBAL",1) !Global("PCKeepOwner","GLOBAL",1)~ THEN @270
== BNALIA IF ~Global("NaliaKeepPlot","GLOBAL",1) !Global("PCKeepOwner","GLOBAL",1)~ THEN @271
== BNALIA IF ~Global("NaliaKeepPlot","GLOBAL",1) Global("PCKeepOwner","GLOBAL",1)~ THEN @272
== MWBArn IF ~Global("NaliaKeepPlot","GLOBAL",1) Global("PCKeepOwner","GLOBAL",1)~ THEN @273
== BNALIA IF ~Global("NaliaKeepPlot","GLOBAL",1) Global("PCKeepOwner","GLOBAL",1)~ THEN @274
EXIT

CHAIN IF ~Global("MWBAN2","LOCALS",0)
InParty("Nalia")
See("Nalia")
CombatCounter(0)
Global("MWBAN1","LOCALS",1)
!Global("ArienaRedemption","GLOBAL",1)
!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN MWBArn MWConAN2
@275 
DO ~SetGlobal("MWBAN2","LOCALS",1)~
== BNALIA @276
== MWBArn @277
== BNALIA @278
== MWBArn @279
== BNALIA @280
== MWBArn @281
== BNALIA @282
== MWBArn @283
EXIT

CHAIN IF ~Global("MWBAN3","LOCALS",0)
InParty("Nalia")
See("Nalia")
CombatCounter(0)
Global("MWBAN1","LOCALS",1)
Global("ArienaRedemption","GLOBAL",1)
!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN MWBArn MWConAN3
@284
DO ~SetGlobal("MWConAN3","LOCALS",1)~
== BNALIA @285
== MWBArn @286
== BNALIA IF ~!Global("NaliaKeepPlot","GLOBAL",1)~ THEN @287
== BNALIA IF ~Global("NaliaKeepPlot","GLOBAL",1) !Global("PCKeepOwner","GLOBAL",1)~ THEN @288
== BNALIA IF ~Global("NaliaKeepPlot","GLOBAL",1) Global("PCKeepOwner","GLOBAL",1)~ THEN @289
== MWBArn IF ~Global("NaliaKeepPlot","GLOBAL",1)~ THEN @290
EXIT

CHAIN IF ~Global("MWBAE1","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Gender("Edwin",MALE)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BEDWIN MWConAE1
@291
DO ~SetGlobal("MWBAE1","GLOBAL",1) ClearAllActions()~
== MWBArn @292
== BEDWIN @293
== MWBArn @294
== BEDWIN @295
== MWBArn @296 DO ~ActionOverride("MWAriena",MoveToObject("Edwin"))~
== BEDWIN @297
== MWBArn @298
DO ~ActionOverride("MWAriena",ApplyDamagePercent("Edwin",10,CRUSHING)) ActionOverride("Edwin",PlayDead(60))~
== MWBKid IF ~InParty("MWKido")~ THEN @299 DO ~ActionOverride("MWAriena",ApplyDamagePercent("MWKido",5,CRUSHING))  ActionOverride("MWKido",PlayDead(30))~
== MWBArn IF ~InParty("MWKido")~ THEN @300
== BEDWIN @301
== MWBArn @302
EXIT

CHAIN IF ~Global("MWBAE2","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAE1","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BEDWIN MWConAE2
@303
DO ~SetGlobal("MWBAE2","GLOBAL",1)~
== MWBArn @304
== BEDWIN @305
== MWBArn @306
== BEDWIN @307
== MWBArn @308
== BEDWIN @309
== MWBArn @310
== BEDWIN @311
END
IF ~~ THEN REPLY @312 EXTERN MWBArn exceptcontest
IF ~CheckStatGT(PLAYER1,12,CHR)~ THEN REPLY @313 EXTERN BEDWIN nocontest
IF ~~ THEN REPLY @314 EXTERN MWBArn goneforever
IF ~~ THEN REPLY @315 EXTERN MWBArn arienafrenzy
IF ~~ THEN REPLY @316 EXTERN BEDWIN leaveforever
IF ~~ THEN REPLY @317 EXTERN BEDWIN edwinfrenzy

CHAIN IF ~Global("MWBAE2","GLOBAL",1)
!StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN MWBArn exceptcontest
@318
DO ~SetGlobal("MWBAE2","GLOBAL",2) ActionOverride("MWAriena",Attack("Edwin"))~
EXIT

CHAIN IF ~Global("MWBAE2","GLOBAL",1)
!StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN MWBArn goneforever
@319
DO ~SetGlobal("MWBAE2","GLOBAL",2) LeaveParty() EscapeArea()~
EXIT

CHAIN IF ~Global("MWBAE2","GLOBAL",1)
!StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN MWBArn arienafrenzy
@320
DO ~SetGlobal("MWBAE2","GLOBAL",2) Attack(Player1)~
EXIT

CHAIN IF ~Global("MWBAE2","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BEDWIN nocontest
@321
DO ~SetGlobal("MWBAE2","GLOBAL",2) SetGlobal("keepdistant","GLOBAL",2)~
EXIT

CHAIN IF ~Global("MWBAE2","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BEDWIN leaveforever
@322
DO ~SetGlobal("MWBAE2","GLOBAL",2) LeaveParty() EscapeArea()~
EXIT

CHAIN IF ~Global("MWBAE2","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BEDWIN edwinfrenzy
@323
DO ~SetGlobal("MWBAE2","GLOBAL",2) ActionOverride("Edwin",Attack("MWAriena"))~
EXIT

CHAIN IF ~Global("MWBAE3","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAE1","GLOBAL",1)
Global("MWBAE2","GLOBAL",2)
Global("ArienaFallen","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BEDWIN MWConAE3
@324
DO ~SetGlobal("MWBAE3","GLOBAL",1)~
== MWBArn @325
== BEDWIN @326
== MWBArn @327
== BEDWIN @328
== MWBArn @329
== BEDWIN @330
= @331
EXIT

CHAIN IF ~Global("MWBAH1","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BHAERDA MWConAH1
@332
DO ~SetGlobal("MWBAH1","GLOBAL",1)~
== MWBArn @333
== BHAERDA @334
== MWBArn @335
== BHAERDA @336
== MWBArn @337
== BHAERDA @338
== MWBArn @339
EXIT

CHAIN IF ~Global("mirrortwice","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAH1","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BHAERDA MWConAH2
@340
DO ~SetGlobal("mirrortwice","GLOBAL",1)~
== MWBArn @341
== BHAERDA @342
== MWBArn @343
== BHAERDA @344
== MWBArn @345
== BHAERDA @346
== MWBArn @347
== BHAERDA @348
== MWBArn @349
== BHAERDA @350
== MWBArn @351
== BHAERDA @352
== MWBArn @353
EXIT

CHAIN IF ~Global("MWBAH3","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAH1","GLOBAL",1)
OR(2)
Global("ArienaFallen","GLOBAL",1)
Global("ArienaRedemption","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BHAERDA MWConAH3
@354
DO ~SetGlobal("MWBAH3","GLOBAL",1)~
== MWBArn @355
== BHAERDA @356
= @357
== MWBArn @224
EXIT

CHAIN IF ~Global("MWBAMA1","LOCALS",0)
InParty("Mazzy")
See("Mazzy")
CombatCounter(0)
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN MWBArn MWConAMA1
@358
DO ~SetGlobal("MWBAMA1","LOCALS",1)~
== BMAZZY @359
== MWBArn @360
== BMAZZY @361
== MWBArn @362
== BMAZZY @363
== MWBArn @364
== BMAZZY @365
EXIT

CHAIN IF ~Global("MWBAMA2","LOCALS",0)
InParty("Mazzy")
See("Mazzy")
CombatCounter(0)
Global("MWBAMA1","LOCALS",1)
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN MWBArn MWConAMA2
@366
DO ~SetGlobal("MWBAMA2","LOCALS",1)~
== BMAZZY @367
== MWBArn @368
== BMAZZY @369
== MWBArn @370
EXIT

CHAIN IF ~Global("MWBAMA3","GLOBAL",0)
InParty("MWAriena")
CombatCounter(0)
Global("RaOrKill","GLOBAL",1)
!StateCheck("MWAriena",CD_STATE_NOTVALID)~ THEN BMAZZY MWConAMA3
@371 DO ~SetGlobal("MWBAMA3","GLOBAL",1)~
== MWBArn @208
== BMAZZY @372 DO ~ActionOverride("Mazzy",LeaveParty()) ActionOverride("Mazzy",Enemy()) ActionOverride("Mazzy",Attack(Player1))~
EXIT

CHAIN IF ~Global("MWBAC1","LOCALS",0)
InParty("Cernd")
See("Cernd")
CombatCounter(0)
!StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN MWBArn MWConAC1
@373
DO ~SetGlobal("MWBAC1","LOCALS",1)~
== BCERND @374
== MWBArn @375
== BCERND @376
== MWBArn @377
== BCERND @378
== MWBArn @379
EXIT

CHAIN IF ~Global("MWBAC2","LOCALS",0)
InParty("Cernd")
See("Cernd")
CombatCounter(0)
Global("MWBAC1","LOCALS",1)
Global("CerndPlot","GLOBAL",1)
!StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN MWBArn MWConAC2
@380
DO ~SetGlobal("MWBAC2","LOCALS",1)~
== BCERND @381
== MWBArn @382
== BCERND @383
== MWBArn @384
EXIT

CHAIN IF ~Global("MWBAC3","LOCALS",0)
InParty("Cernd")
See("Cernd")
CombatCounter(0)
Global("MWBAC1","LOCALS",1)
!StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN MWBArn MWConAC3
@385
DO ~SetGlobal("MWBAC3","LOCALS",1)~
== BCERND @386
== MWBArn @387
== BCERND @388
== MWBArn @389
== BCERND @390
EXIT

CHAIN IF ~Global("MWBAVA1","GLOBAL",0)
InParty("Valygar")
See("Valygar")
CombatCounter(0)
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN MWBArn MWConAVA1
@391
DO ~SetGlobal("MWBAVA1","GLOBAL",1)~
== BVALYGA @392
== MWBArn @393
== BVALYGA @394
== MWBArn @395
== BVALYGA @396
EXIT

CHAIN IF ~Global("MWBAVA2","GLOBAL",0)
InParty("MWAriena")
See("MWAriena")
CombatCounter(0)
Global("MWBAVA1","GLOBAL",1)
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN BVALYGA MWConAVA2
@397
DO ~SetGlobal("MWBAVA2","GLOBAL",1)~
== MWBArn @398
== BVALYGA @399
== MWBArn @400
== BVALYGA @401
== MWBArn @402
== BVALYGA @403
== MWBArn @404
== BVALYGA @405
EXIT

CHAIN
  IF ~Global("MWBAK1","LOCALS",0)
  InParty("MWKido")
  See("MWKido")
  CombatCounter(0)
  !StateCheck("MWKido",CD_STATE_NOTVALID)~ THEN MWBArn MWConAK1
  @406
DO ~SetGlobal("MWBAK1","LOCALS",1)~
  == MWBKid
  @407
  == MWBArn
  @408
  == MWBKid  
  @409
  == MWBArn 
  @410
  == MWBKid 
  @411
  == MWBArn 
  @412
  == MWBKid 
  @413
  == MWBArn 
  @414
  == MWBKid
  @415
EXIT

CHAIN
  IF ~Global("MWBAK2","LOCALS",0)
  InParty("MWKido")
  See("MWKido")
  CombatCounter(0)
  GLOBAL("MWBAK1","LOCALS",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)~ THEN MWBArn MWConAK2
  @416
DO ~SetGlobal("MWBAK2","LOCALS",1)~
  == MWBKid
  @417
  == MWBArn
  @418
  == MWBKid
  @419
  == MWBArn
  @420
  == MWBKid
  @421
EXIT

CHAIN
IF ~Global("MWBAK3","GLOBAL",0)
  InParty("MWAriena")
  See("MWAriena")
  CombatCounter(0)
  Global("ArienaRedemption","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)~ THEN MWBKid MWConAK3
  @422 DO ~SetGlobal("MWBAK3","GLOBAL",1)~
== MWBArn @423  
== MWBKid @424
EXIT
