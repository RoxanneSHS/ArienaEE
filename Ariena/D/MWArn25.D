EXTEND_TOP FATESP 6 #4
  IF ~!Dead("MWAriena")
!InMyArea("MWAriena")
Global("ArienaSummoned","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("MWArn25",[1999.1228],0)
SetGlobal("ArienaSummoned","GLOBAL",1)~ GOTO 8
END

BEGIN MWARN25

IF ~NumTimesTalkedTo(0)~ THEN BEGIN AFirstMeeting25
  SAY @1
=
@2
  IF ~~ THEN REPLY @3 GOTO conconver
  IF ~~ THEN REPLY @4 GOTO readytokill
  IF ~!Global("ArienaRedemption","GLOBAL",1)~ THEN REPLY @5 GOTO gomad
  IF ~Global("ArienaRedemption","GLOBAL",1)~ THEN REPLY @5 GOTO goangry
END

IF ~~ THEN BEGIN conconver
  SAY @6
  IF ~~ THEN REPLY @7 GOTO readytokill
  IF ~~ THEN REPLY @8 GOTO readytokill
  IF ~!Global("ArienaRedemption","GLOBAL",1)~ THEN REPLY @9 GOTO gomad
  IF ~Global("ArienaRedemption","GLOBAL",1)~ THEN REPLY @9 GOTO goangry
END

IF ~~ THEN BEGIN readytokill
  SAY @10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Ariena25Joined","LOCALS",1) JoinParty()~ EXIT
  IF ~!Global("ArienaRedemption","GLOBAL",1)~ THEN REPLY @12 GOTO gomad
  IF ~Global("ArienaRedemption","GLOBAL",1)~ THEN REPLY @12 GOTO goangry
END

IF ~~ THEN BEGIN goangry
  SAY @13
  IF ~~ THEN REPLY ~~ DO ~MoveToPointNoInterrupt([1943.1861])~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN ASecMeeting25
  SAY @15
  IF ~~ THEN REPLY @16 GOTO youtooweak
  IF ~~ THEN REPLY @17 GOTO travelwithyou
  IF ~~ THEN REPLY @18 GOTO travelwithyou
  IF ~!Global("triedalready","GLOBAL",1)~ THEN REPLY @19 GOTO reallyangry 
  IF ~Global("triedalready","GLOBAL",1)~ THEN REPLY @19 GOTO gomadred
END

IF ~~ THEN BEGIN gomad
  SAY @20
  IF ~~ THEN DO ~Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN reallyangry
  SAY @21
  IF ~~ THEN DO ~SetGlobal("triedalready","GLOBAL",1)~ EXIT
END


IF ~~ THEN BEGIN gomadred
  SAY @22
  IF ~~ THEN DO ~Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN travelwithyou
  SAY @23
  IF ~~ THEN REPLY @11 DO ~SetGlobal("Ariena25Joined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @24 GOTO gomadred
END

IF ~~ THEN BEGIN youtooweak
  SAY @25
  IF ~~ THEN EXIT
END