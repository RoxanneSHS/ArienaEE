BEGIN MWARN

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeeting
  SAY @0
  IF ~~ THEN REPLY @1 GOTO Scram
  IF ~~ THEN REPLY @2 GOTO Continue
  IF ~~ THEN REPLY @3 GOTO Mayok
  IF ~~ THEN REPLY @4 GOTO Scram
  IF ~~ THEN REPLY @5 GOTO Depart
END

IF ~~ THEN BEGIN Mayok
  SAY @6
  IF ~~ THEN REPLY @7 GOTO Wromov 
  IF ~~ THEN REPLY @8 GOTO AAsk
  IF ~~ THEN REPLY @9 GOTO Geaw
END

IF ~~ THEN BEGIN AAsk
  SAY @10
  IF ~~ THEN REPLY @11 GOTO Wromov2
  IF ~~ THEN REPLY @12 GOTO Continue
  IF ~~ THEN REPLY @13 GOTO Continue
  IF ~~ THEN REPLY @14 GOTO Geaw
END

IF ~~ THEN BEGIN Continue
  SAY @15
  IF ~~ THEN REPLY @16 GOTO Offended 
  IF ~~ THEN REPLY @17 GOTO AGain
  IF ~~ THEN REPLY @18 GOTO Depart
END

IF ~~ THEN BEGIN Wromov
  SAY @19
  IF ~~ THEN REPLY @20 GOTO Offended
  IF ~~ THEN REPLY @21 GOTO Offended
  IF ~~ THEN REPLY @22 GOTO Scram
  IF ~~ THEN REPLY @23 GOTO aap
END

IF ~~ THEN BEGIN Wromov2
  SAY @24
  IF ~~ THEN REPLY @25 GOTO Scram
  IF ~~ THEN REPLY @26 GOTO Continue
  IF ~~ THEN REPLY @23 GOTO aap
END

IF ~~ THEN BEGIN Offended
  SAY @27
  IF ~CheckStatGT(PLAYER1,12,CHR)~ THEN REPLY @28 GOTO Explain
  IF ~CheckStatLT(PLAYER1,13,CHR)~ THEN REPLY @28 GOTO NoWiEx
  IF ~~ THEN REPLY @29 GOTO AGain
  IF ~~ THEN REPLY @30 GOTO Depart
END

IF ~~ THEN BEGIN Explain
  SAY @31
  IF ~~ THEN REPLY @32 GOTO Hurry
  IF ~~ THEN REPLY @33 GOTO AGain
END

IF ~~ THEN BEGIN NoWiEx
  SAY @34
  IF ~~ THEN REPLY @35 GOTO AGain
  IF ~~ THEN REPLY @36 GOTO Depart
END

IF ~~ THEN BEGIN Hurry
  SAY @37
  IF ~~ THEN REPLY @38 GOTO AGain 
  IF ~~ THEN REPLY @39 GOTO Depart
END

IF ~~ THEN BEGIN AGain
  SAY @40
  IF ~~ THEN REPLY @41 DO ~SetGlobal("ArienaJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @42 GOTO Pabethlo
END

IF ~~ THEN BEGIN Pabethlo
  SAY @43
  IF ~~ THEN REPLY @44 DO ~SetGlobal("ArienaJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @45 DO ~SetGlobal("ArienaJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @46 GOTO Depart 
END

IF ~~ THEN BEGIN Scram
  SAY @47
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN aap
  SAY @48
  IF ~~ THEN DO ~Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN Geaw
  SAY @49
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Depart
  SAY @50
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN SecMeeting
  SAY @51
  IF ~~ THEN REPLY @52 GOTO nopawaist
  IF ~~ THEN REPLY @53 GOTO donedeal
  IF ~~ THEN REPLY @54 GOTO doubtgl 
  IF ~~ THEN REPLY @55 GOTO Scram
END

IF ~~ THEN BEGIN nopawaist
  SAY @56
  IF ~~ THEN REPLY @57 GOTO threat
  IF ~~ THEN REPLY @58 GOTO respect
  IF ~~ THEN REPLY @59 GOTO check
END

IF ~~ THEN BEGIN threat
  SAY @60
  IF ~~ THEN REPLY @61 GOTO aap
  IF ~~ THEN REPLY @62 GOTO check
END

IF ~~ THEN BEGIN doubtgl
  SAY @63
  IF ~~ THEN REPLY @64 GOTO Scram 
  IF ~~ THEN REPLY @65 GOTO donedeal 
END

IF ~~ THEN BEGIN respect
  SAY @66
  IF ~~ THEN REPLY @67 DO ~SetGlobal("ArienaJoined","LOCALS",1) JoinParty()~ EXIT 
  IF ~~ THEN REPLY @68 GOTO AGain
  IF ~~ THEN REPLY @69 GOTO Depart
END

IF ~~ THEN BEGIN check
  SAY @70
  IF ~~ THEN REPLY @71 GOTO donedeal
  IF ~~ THEN REPLY @72 GOTO statepoint 
  IF ~~ THEN REPLY @73 GOTO Depart
END

IF ~~ THEN BEGIN statepoint
  SAY @74
  IF ~~ THEN REPLY @75 GOTO Depart 
  IF ~~ THEN REPLY @76 GOTO donedeal 
END

IF ~~ THEN BEGIN donedeal
  SAY @77
  IF ~~ THEN REPLY @78 DO ~SetGlobal("ArienaJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @79 GOTO Geaw
END