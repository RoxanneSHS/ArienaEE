BEGIN MWArnP

IF ~Global("ArienaJoined","LOCALS",1) Global("Arinumkic","GLOBAL",0)~ THEN BEGIN KickAr
  SAY @0
  IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @2 GOTO Arleafor
END

IF ~~ THEN BEGIN Arleafor
  SAY @3
  IF ~~ THEN DO ~SetGlobal("ArienaJoined","LOCALS",0) SetGlobal("Arinumkic","GLOBAL",1) EscapeAreaMove("AR0300",4544,2236,2)~ EXIT
END

IF ~Global("ArienaJoined","LOCALS",1) Global("Arinumkic","GLOBAL",1)~ THEN BEGIN KickAr2
  SAY @4
  IF ~~ THEN REPLY @5 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @6 DO ~JoinParty()~ EXIT 
  IF ~~ THEN REPLY @7 GOTO Arleafore
END

IF ~~ THEN BEGIN Arleafore
  SAY @8
  IF ~~ THEN DO ~SetGlobal("ArienaJoined","LOCALS",0) EscapeArea()~ EXIT
END

IF ~Global("ArienaJoined","LOCALS",0)~ THEN BEGIN Rejoin
  SAY @9
  IF ~~ THEN REPLY @10 DO ~SetGlobal("ArienaJoined","LOCALS",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @11 EXIT
  IF ~~ THEN REPLY @12 GOTO Stuppla
END

IF ~~ THEN BEGIN Stuppla
  SAY @13
  IF ~~ THEN REPLY @14 GOTO Ajocom
  IF ~~ THEN REPLY @15 GOTO Ajocom
  IF ~~ THEN REPLY @16 GOTO PlwidibA
  IF ~~ THEN REPLY @17 GOTO PLeavesA
END

IF ~~ THEN BEGIN Ajocom
  SAY @18
  IF ~~ THEN DO ~SetGlobal("ArienaJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN PlwidibA
  SAY @19
  IF ~~ THEN DO ~Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN PLeavesA
  SAY @20
  IF ~~ THEN EXIT
END