BEGIN MWBOHUL

IF ~Global("Arcombatbohu","GLOBAL",2)~ THEN BEGIN HUNT_1
SAY @0 
IF ~~ THEN REPLY @1 DO ~SetGlobal("Arcombatbohu","GLOBAL",3)~ EXTERN MWBOHUL HUNT_2
IF ~~ THEN REPLY @2 DO ~SetGlobal("Arcombatbohu","GLOBAL",3)~ GOTO HUNT_8
IF ~~ THEN REPLY @3 DO ~SetGlobal("Arcombatbohu","GLOBAL",3)~ GOTO HUNT_8
IF ~~ THEN REPLY @4 DO ~SetGlobal("Arcombatbohu","GLOBAL",3)~ GOTO HUNT_9
IF ~~ THEN REPLY @5 DO ~SetGlobal("Arcombatbohu","GLOBAL",3)~ GOTO HUNT_10
END

CHAIN MWBOHUL HUNT_2
@6
== MWARNJ IF ~InParty("MWAriena") !Dead("MWAriena")~ THEN @7
== MWBOHUL IF ~InParty("MWAriena") !Dead("MWAriena")~ THEN @8
= @9
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10
== Yoshj IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @11
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @12
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @13
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @14
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @15
== MWBOHUL @16
END
  IF ~~ THEN REPLY @17 GOTO HUNT_10
  IF ~~ THEN REPLY @18 GOTO HUNT_10
  IF ~CheckStatGT(Player1,12,CHR) Global("Arrecbohu2","GLOBAL",0)~ THEN REPLY @19 EXTERN MWARNJ ReaBohu1
  IF ~CheckStatLT(Player1,13,CHR) Global("Arrecbohu3","GLOBAL",0)~ THEN REPLY @19 EXTERN MWARNJ ReaBohu2
  IF ~~ THEN REPLY @20 GOTO HUNT_5

APPEND MWBOHUL
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
IF ~~ THEN DO ~GivePartyGold(3000) SetGlobal("Arcombatbohu","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("MWTakeAr")~ EXIT
END

IF ~~ THEN BEGIN HUNT_6
SAY @25
  IF ~~ THEN REPLY @26 GOTO HUNT_10
  IF ~~ THEN REPLY @29 GOTO HUNT_7
END

IF ~~ THEN BEGIN HUNT_7
SAY @30
IF ~~ THEN DO ~GivePartyGold(4000) SetGlobal("Arcombatbohu","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("MWTakeAr")~ EXIT
END
END

CHAIN MWBOHUL HUNT_8
@31
== JAHEIRAJ IF ~InParty("Jaheira") See("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10
== Yoshj IF ~InParty("Yoshimo") See("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @11
== KELDORJ IF ~InParty("Keldorn") See("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @12
== MAZZYJ IF ~InParty("Mazzy") See("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @13
== EDWINJ IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @14
== KORGANJ IF ~InParty("Korgan") See("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @15
== MWBOHUL @16
END
  IF ~~ THEN REPLY @17 GOTO HUNT_10
  IF ~~ THEN REPLY @18 GOTO HUNT_10
  IF ~CheckStatGT(Player1,12,CHR) Global("Arrecbohu2","GLOBAL",0)~ THEN REPLY @19 EXTERN MWARNJ ReaBohu2
  IF ~CheckStatLT(Player1,13,CHR) Global("Arrecbohu3","GLOBAL",0)~ THEN REPLY @19 EXTERN MWARNJ ReaBohu3
  IF ~~ THEN REPLY @20 GOTO HUNT_6

CHAIN MWBOHUL HUNT_9
@32
== JAHEIRAJ IF ~InParty("Jaheira") See("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10
== Yoshj IF ~InParty("Yoshimo") See("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @11
== KELDORJ IF ~InParty("Keldorn") See("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @12
== MAZZYJ IF ~InParty("Mazzy") See("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @13
== EDWINJ IF ~InParty("Edwin") See("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @14
== KORGANJ IF ~InParty("Korgan") See("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @15
== MWBOHUL @16
END
  IF ~~ THEN REPLY @17 GOTO HUNT_10
  IF ~~ THEN REPLY @18 GOTO HUNT_10
  IF ~CheckStatGT(Player1,12,CHR) Global("Arrecbohu2","GLOBAL",0)~ THEN REPLY @19 EXTERN MWARNJ ReaBohu2
  IF ~CheckStatLT(Player1,13,CHR) Global("Arrecbohu3","GLOBAL",0)~ THEN REPLY @19 EXTERN MWARNJ ReaBohu3
  IF ~~ THEN REPLY @20 GOTO HUNT_6

APPEND MWBOHUL
IF ~~ THEN BEGIN HUNT_10
SAY @33 
  IF ~~ THEN DO ~SetGlobal("Arcombatbohu","GLOBAL",4) ActionOverride("MWBoHuM",Enemy())
ActionOverride("MWBoHu1",Enemy())
ActionOverride("MWBoHu2",Enemy())
ActionOverride("MWBoHu3",Enemy())
ActionOverride("MWBoHu4",Enemy())
ActionOverride("MWBoHu5",Enemy())
Enemy() Attack("MWAriena")~ EXIT
END
END

APPEND MWARNJ
IF ~Global("Arcombatbohu","GLOBAL",3)~ THEN BEGIN ReaBohu1
SAY @34 
IF ~~ THEN DO ~SetGlobal("Arrecbohu2","GLOBAL",1)~ EXTERN MWBOHUL HUNT_3
END

IF ~Global("Arcombatbohu","GLOBAL",3)~ THEN BEGIN ReaBohu2
SAY @34 
IF ~~ THEN DO ~SetGlobal("Arrecbohu3","GLOBAL",1)~ EXTERN MWBOHUL HUNT_4
END

IF ~Global("Arcombatbohu","GLOBAL",3)~ THEN BEGIN ReaBohu3
SAY @34 
IF ~~ THEN DO ~SetGlobal("Arrecbohu3","GLOBAL",1)~ EXTERN MWBOHUL HUNT_5
END
END
