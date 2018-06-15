BEGIN MWANDIA

IF ~True()~ THEN BEGIN MWConAndia1
SAY @0
IF ~!Dead("Shadeld")~ THEN REPLY @1 GOTO MWCONAndia2
IF ~~ THEN REPLY @2 GOTO MWCONAndia3
IF ~CheckStatGT(Player1,12,WIS)~ THEN REPLY @3 GOTO MWCONAndia5
IF ~~ THEN REPLY @4 GOTO MWCONAndia4
IF ~InParty("MWAriena") See("MWAriena") Global("Arperqu","GLOBAL",8) Global("RaOrKill","GLOBAL",1)~ THEN REPLY @5 DO ~SetGlobal("Arperqu","GLOBAL",9)~ GOTO MWCONAndiaCh1
IF ~InParty("MWAriena") See("MWAriena") Global("Arperqu","GLOBAL",8)  !Global("RaOrGiveHelp","Global",2)~ THEN REPLY @6 DO ~SetGlobal("Arperqu","GLOBAL",9)~ GOTO MWCONAndiaCh2
IF ~InParty("MWAriena") See("MWAriena") Global("Arperqu","GLOBAL",8) Global("RaOrGiveHelp","Global",1)~ THEN REPLY @7 DO ~SetGlobal("Arperqu","GLOBAL",9)~ GOTO MWCONAndiaCh3
END

IF ~~ THEN BEGIN MWCONAndia2
SAY @8
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MWCONAndia3
SAY @9
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MWCONAndia4
SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MWCONAndia5
SAY @11
IF ~!Dead("Shadeld")~ THEN REPLY @1 GOTO MWCONAndia2
IF ~CheckStatGT(Player1,16,WIS) Global("MWMAGiveGold","GLOBAL",0)~ THEN REPLY @12 GOTO MWCONAndia6
IF ~~ THEN REPLY @2 GOTO MWCONAndia3
IF ~~ THEN REPLY @4 GOTO MWCONAndia4
END

IF ~~ THEN BEGIN MWCONAndia6
SAY @13
IF ~~ THEN REPLY @14 GOTO MWCONAndia7
IF ~~ THEN REPLY @15 GOTO MWCONAndia8
END

IF ~~ THEN BEGIN MWCONAndia7
SAY @16
IF ~!Dead("shadeld")~ THEN REPLY @1 GOTO MWCONAndia2
IF ~~ THEN REPLY @2 GOTO MWCONAndia3
IF ~~ THEN REPLY @4 GOTO MWCONAndia4
END

IF ~~ THEN BEGIN MWCONAndia8
SAY @17
IF ~~ THEN REPLY @18 DO ~SetGlobal("MWMAGiveGold","GLOBAL",1) GivePartyGold(10)~ EXIT
IF ~~ THEN REPLY @19 GOTO MWCONAndia9
IF ~~ THEN REPLY @20 DO ~SetGlobal("MWMAGiveGold","GLOBAL",1) GivePartyGold(10)~ EXIT
END

IF ~~ THEN BEGIN MWCONAndia9
SAY @21
IF ~~ THEN REPLY @22 GOTO MWCONAndia7
IF ~~ THEN REPLY @23 GOTO MWCONAndia8
END

IF ~~ THEN BEGIN MWCONAndia10
SAY @24
IF ~~ THEN DO ~ActionOverride("MWAndia",EscapeArea())~ EXIT
END

CHAIN MWAndia MWCONAndiaCh1
@25
== MWARNJ @26
== MWANDIA @27
== MWARNJ @28
== KORGANJ IF ~InParty("Korgan") See("Korgan")~ THEN @29
== MWANDIA @30
== MWARNJ @31
== MWANDIA @32
== MWARNJ @33
== MWANDIA @34
== MWARNJ @35
== MWANDIA @36
= @37
== MWARNJ @38
== MWANDIA @39
== MWARNJ @40
== MWANDIA @41
== MWARNJ @42
== MWANDIA @43
= @44
= @45
= @46
= @47
== MWARNJ @48
== MWANDIA @49
== MWARNJ @50
END
++ @51 EXTERN MWARNJ MWArFallen
++ @52 EXTERN MWARNJ MWArStayNE

CHAIN MWAndia MWCONAndiaCh2
@53
== MWARNJ @54
== MWANDIA @55
== MWARNJ @56
== MWANDIA @57
= @58
= @59
= @60
== MWARNJ @61
== MWANDIA @62
== MWARNJ @63
== MWANDIA @64
== MWARNJ @65
== MWANDIA @66
== MWARNJ @67
== MWANDIA @68
== MWARNJ @69
END
++ @70 EXTERN MWARNJ MWArStaySame
++ @71 EXTERN MWARNJ MWArStaySame

CHAIN MWAndia MWCONAndiaCh3
@72
== MWARNJ @73
== MWANDIA @74
= @75
== MWARNJ @61
== MWANDIA @76
== MWARNJ @63
== MWANDIA @64
== MWARNJ @77
== MWANDIA @78
== MWARNJ @79
== MWANDIA @80
== MWARNJ @81
== MWANDIA @82
== MWARNJ @83
== MWANDIA @84
== MWARNJ @85
END
++ @86 EXTERN MWARNJ MWArRedempted
++ @87 EXTERN MWARNJ MWArRedempted
++ @88 EXTERN MWANDIA MWCONAndiaCh4

CHAIN MWAndia MWCONAndiaCh4
@89
== MWARNJ @90
== MWANDIA @91
== MWARNJ @92
== MWANDIA @93 DO ~ActionOverride("MWAndia",EscapeArea())~
END

APPEND MWARNJ
IF ~~ THEN BEGIN MWArFallen
SAY @94
IF ~~ THEN DO ~ActionOverride("MWAriena",MoveToObject("MWAndia"))
ActionOverride("MWAriena",FaceObject("MWAndia"))
ActionOverride("MWAriena",SwingOnce())
ActionOverride("MWAndia",Kill(Myself))
SetGlobal("ArienaFallen","GLOBAL",1)
ChangeAlignment("MWAriena",CHAOTIC_EVIL)
Wait(3)~ EXIT
END

IF ~~ THEN BEGIN MWArStayNE
SAY @95
IF ~~ THEN DO ~ActionOverride("MWAriena",RunAwayFrom("MWAndia",30)) ActionOverride("MWAndia",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN MWArStaySame
SAY @96
IF ~~ THEN EXTERN MWAndia MWCONAndia10
END

IF ~~ THEN BEGIN MWArRedempted
SAY @97
IF ~~ THEN DO ~ActionOverride("MWAriena",MoveToObject("MWAndia"))
ActionOverride("MWAriena",FaceObject("MWAndia"))
ActionOverride("MWAndia",MoveToObject("MWAriena"))
ActionOverride("MWAndia",FaceObject("MWAriena"))
SetGlobal("ArienaRedemption","GLOBAL",1)
ChangeAlignment("MWAriena",NEUTRAL)
Wait(3)~ EXIT
END
END
