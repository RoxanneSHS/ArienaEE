BEGIN BOHUNL

IF ~Global("Arcombatbohu","GLOBAL",2)~ THEN BEGIN HUNT_1
SAY @0 
IF ~~ THEN REPLY @1 DO ~SetGlobal("Arcombatbohu","GLOBAL",3)~ EXTERN BOHUNL HUNT_2
IF ~~ THEN REPLY @2 DO ~SetGlobal("Arcombatbohu","GLOBAL",3)~ GOTO HUNT_8
IF ~~ THEN REPLY @3 DO ~SetGlobal("Arcombatbohu","GLOBAL",3)~ GOTO HUNT_8
IF ~~ THEN REPLY @4 DO ~SetGlobal("Arcombatbohu","GLOBAL",3)~ GOTO HUNT_9
IF ~~ THEN REPLY @5 DO ~SetGlobal("Arcombatbohu","GLOBAL",3)~ GOTO HUNT_10
END

CHAIN BOHUNL HUNT_2
@6
== ARIENAJ IF ~InParty("Ariena") !Dead("Ariena")~ THEN @7 
== BOHUNL IF ~InParty("Ariena") !Dead("Ariena")~ THEN @8
= @9
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10
== Yoshj IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @11
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @12
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @13
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @14
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @15
== BOHUNL @16
END
  IF ~~ THEN REPLY @17 GOTO HUNT_10
  IF ~~ THEN REPLY @18 GOTO HUNT_10
  IF ~CheckStatGT(Player1,12,CHR) Global("Arrecbohu2","GLOBAL",0)~ THEN REPLY @19 EXTERN ARIENAJ ReaBohu1
  IF ~CheckStatLT(Player1,13,CHR) Global("Arrecbohu3","GLOBAL",0)~ THEN REPLY @19 EXTERN ARIENAJ ReaBohu2
  IF ~~ THEN REPLY @20 GOTO HUNT_5

APPEND BOHUNL
IF ~~ THEN BEGIN HUNT_3
SAY @21
  IF ~~ THEN REPLY @22 GOTO HUNT_10
  IF ~~ THEN REPLY @23 GOTO HUNT_6
  IF ~~ THEN REPLY @24 GOTO HUNT_7
END

IF ~~ THEN BEGIN HUNT_4
SAY @25
  IF ~~ THEN REPLY @26 GOTO HUNT_10
  IF ~~ THEN REPLY @27 GOTO HUNT_5
END

IF ~~ THEN BEGIN HUNT_5
SAY @28
IF ~~ THEN DO ~GivePartyGold(3000) SetGlobal("Arcombatbohu","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("ArienTkn")~ EXIT
END

IF ~~ THEN BEGIN HUNT_6
SAY @25
  IF ~~ THEN REPLY @26 GOTO HUNT_10
  IF ~~ THEN REPLY @29 GOTO HUNT_7
END

IF ~~ THEN BEGIN HUNT_7
SAY @30
IF ~~ THEN DO ~GivePartyGold(4000) SetGlobal("Arcombatbohu","GLOBAL",4)
ClearAllActions() StartCutSceneMode() StartCutScene("ArienTkn")~ EXIT
END
END

CHAIN BOHUNL HUNT_8
@31
== JAHEIRAJ IF ~InParty("Jaheira") See("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10
== Yoshj IF ~InParty("Yoshimo") See("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @11
== KELDORJ IF ~InParty("Keldorn") See("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @12
== MAZZYJ IF ~InParty("Mazzy") See("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @13
== EDWINJ IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @14
== KORGANJ IF ~InParty("Korgan") See("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @15
== BOHUNL @16
END
  IF ~~ THEN REPLY @17 GOTO HUNT_10
  IF ~~ THEN REPLY @18 GOTO HUNT_10
  IF ~CheckStatGT(Player1,12,CHR) Global("Arrecbohu2","GLOBAL",0)~ THEN REPLY @19 EXTERN ARIENAJ ReaBohu2
  IF ~CheckStatLT(Player1,13,CHR) Global("Arrecbohu3","GLOBAL",0)~ THEN REPLY @19 EXTERN ARIENAJ ReaBohu3
  IF ~~ THEN REPLY @20 GOTO HUNT_6

CHAIN BOHUNL HUNT_9
@32
== JAHEIRAJ IF ~InParty("Jaheira") See("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10
== Yoshj IF ~InParty("Yoshimo") See("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @11
== KELDORJ IF ~InParty("Keldorn") See("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @12
== MAZZYJ IF ~InParty("Mazzy") See("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @13
== EDWINJ IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @14
== KORGANJ IF ~InParty("Korgan") See("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @15
== BOHUNL @16
END
  IF ~~ THEN REPLY @17 GOTO HUNT_10
  IF ~~ THEN REPLY @18 GOTO HUNT_10
  IF ~CheckStatGT(Player1,12,CHR) Global("Arrecbohu2","GLOBAL",0)~ THEN REPLY @19 EXTERN ARIENAJ ReaBohu2
  IF ~CheckStatLT(Player1,13,CHR) Global("Arrecbohu3","GLOBAL",0)~ THEN REPLY @19 EXTERN ARIENAJ ReaBohu3
  IF ~~ THEN REPLY @20 GOTO HUNT_6

APPEND BOHUNL
IF ~~ THEN BEGIN HUNT_10
SAY @33 
  IF ~~ THEN DO ~SetGlobal("Arcombatbohu","GLOBAL",4) ActionOverride("MWBOHUM",Enemy())
ActionOverride("MWBOHU1",Enemy())
ActionOverride("MWBOHU2",Enemy())
ActionOverride("MWBOHU3",Enemy())
ActionOverride("MWBOHU4",Enemy())
ActionOverride("MWBOHU5",Enemy())
Enemy() Attack("Ariena")~ EXIT
END
END

APPEND ARIENAJ
IF ~Global("Arcombatbohu","GLOBAL",3)~ THEN BEGIN ReaBohu1
SAY @34 
IF ~~ THEN DO ~SetGlobal("Arrecbohu2","GLOBAL",1)~ EXTERN BOHUNL HUNT_3
END

IF ~Global("Arcombatbohu","GLOBAL",3)~ THEN BEGIN ReaBohu2
SAY @34 
IF ~~ THEN DO ~SetGlobal("Arrecbohu3","GLOBAL",1)~ EXTERN BOHUNL HUNT_4
END

IF ~Global("Arcombatbohu","GLOBAL",3)~ THEN BEGIN ReaBohu3
SAY @34 
IF ~~ THEN DO ~SetGlobal("Arrecbohu3","GLOBAL",1)~ EXTERN BOHUNL HUNT_5
END
END
