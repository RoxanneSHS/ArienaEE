BEGIN MWARNP25

IF ~Global("Ariena25Joined","LOCALS",1)~ THEN BEGIN MWARTkick1
  SAY @0
  IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT
  IF ~!AreaCheck("AR4500")~ THEN REPLY @2 DO ~SetGlobal("Ariena25Joined","LOCALS",0)~ EXIT
  IF ~AreaCheck("AR4500")~ THEN REPLY @2 GOTO MWARTkick2
END

IF ~~ THEN BEGIN MWARTkick2
  SAY @3
  IF ~~ THEN REPLY @4 DO ~JoinParty()~ EXIT
  IF ~!Global("ArienaRedemption","GLOBAL",1)~ THEN REPLY @5 GOTO MWARTkick3
  IF ~Global("ArienaRedemption","GLOBAL",1)~ THEN REPLY @6 GOTO MWARTkick4
END

IF ~~ THEN BEGIN MWARTkick3
  SAY @7
  IF ~~ THEN REPLY @8 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @9 DO ~ActionOverride("MWAriena",Enemy()) ActionOverride("MWAriena",Attack(Player1))~ EXIT
END

IF ~~ THEN BEGIN MWARTkick4
  SAY @10
  IF ~~ THEN EXIT
END

IF ~Global("Ariena25Joined","LOCALS",0)~ THEN BEGIN MWARTRejoin1
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("Ariena25Joined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @13 GOTO MWARTRejoin2
  IF ~~ THEN REPLY @14 GOTO MWARTRejoin3
END

IF ~~ THEN BEGIN MWARTRejoin2
  SAY @15
  IF ~~ THEN REPLY @16 DO ~SetGlobal("Ariena25Joined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @17 EXIT
END

IF ~~ THEN BEGIN MWARTRejoin3
  SAY @18
  IF ~~ THEN EXIT
END
