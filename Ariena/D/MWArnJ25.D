BEGIN MWArnJ25

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
  IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN Arbatoc
  SAY @96
  IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN Dissarfe
  SAY @97
  IF ~~ THEN DO ~LeaveParty() EscapeArea() RestParty()~ EXIT
END

IF ~~ THEN BEGIN nxmaftthr
  SAY @98
  IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~Global("silentAriena","GLOBAL",1)~ THEN whysilentar
SAY @99 
  IF ~CheckStatGT(Player1,12,CHR) !Global("ArienaFallen","GLOBAL",1)~ THEN REPLY @100 DO ~SetGlobal("silentAriena","GLOBAL",2)~ GOTO explainwhysilent
  IF ~CheckStatGT(Player1,12,CHR) Global("ArienaFallen","GLOBAL",1)~ THEN REPLY @100 DO ~SetGlobal("silentAriena","GLOBAL",2)~ GOTO explainwhysilent2
  IF ~CheckStatLT(Player1,13,CHR)~ THEN REPLY @100 DO ~SetGlobal("silentAriena","GLOBAL",2)~ GOTO notellwhysilent
  IF ~~ THEN REPLY @101 DO ~SetGlobal("silentAriena","GLOBAL",2)~ GOTO notellwhysilent
  IF ~~ THEN REPLY @102 DO ~SetGlobal("silentAriena","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN explainwhysilent
  SAY @103
=
@104
=
@105
  IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN explainwhysilent2
  SAY @103
=
@106
=
@107
  IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN notellwhysilent
  SAY @108
  IF ~~ THEN DO ~RestParty()~ EXIT
END

I_C_T AMASANA 1 MWarsaveas
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena")~ THEN
 @109
END

I_C_T GROMG02 3 MWresawel
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena") !Global("ArienaRedemption","GLOBAL",1)~ THEN
 @110
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena") Global("ArienaRedemption","GLOBAL",1)~ THEN
 @111
END

I_C_T AMARCH02 2 MWArmadMercap
 == MWArnJ IF ~InParty("MWAriena") See("MWAriena") Global("ArienaFallen","GLOBAL",1)~ THEN
 @112
 == AMARCH02
 @113
END

EXTEND_BOTTOM SARVOLO 9 #7
IF ~InParty("MWAriena") !Global("ArienaFallen","GLOBAL",1) !Global("ArienaRedemption","GLOBAL",1)~ THEN REPLY @114 GOTO voloariena
IF ~InParty("MWAriena") Global("ArienaFallen","GLOBAL",1)~ THEN REPLY @114 GOTO voloariena2
IF ~InParty("MWAriena") Global("ArienaRedemption","GLOBAL",1)~ THEN REPLY @114 GOTO voloariena3
END

CHAIN SARVOLO voloariena
@115
== MWArnJ25 IF ~~ THEN @116
EXTERN SARVOLO 9

CHAIN SARVOLO voloariena2
@117
== MWArnJ25 IF ~~ THEN @116
EXTERN SARVOLO 9

CHAIN SARVOLO voloariena3
@118
== MWArnJ25 IF ~~ THEN @116
EXTERN SARVOLO 9

I_C_T2 FINSOL01 27 Arienacomascend
 == MWArnJ25 IF ~InParty("MWAriena") See("MWAriena") !Global("ArienaFallen","GLOBAL",1) !Global("ArienaRedemption","GLOBAL",1)~ THEN
 @119
 == MWArnJ25 IF ~InParty("MWAriena") See("MWAriena") Global("ArienaFallen","GLOBAL",1)~ THEN
 @120
 == MWArnJ25 IF ~InParty("MWAriena") See("MWAriena") Global("ArienaRedemption","GLOBAL",1)~ THEN
 @121
END