BEGIN Olmrch1
BEGIN Olmerch2
BEGIN Olmerch3
BEGIN Olmichae

CHAIN
IF ~  ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER) ~ THEN Olmrch1 Emp1
@0
END
++@1 DO ~StartStore("OLBGAAE1",LastTalkedToBy(Myself))~ EXIT
++@2EXIT

CHAIN
IF ~  ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)~ THEN Olmrch1 Emp2
@3
END
++@1 DO ~StartStore("OLBGAAE1",LastTalkedToBy(Myself))~ EXIT
++@2EXIT

CHAIN
IF ~  ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER) ~ THEN Olmerch2 Emp11
@0
END
++@1 DO ~StartStore("OLBGAAE2",LastTalkedToBy(Myself))~ EXIT
++@2EXIT

CHAIN
IF ~  ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)~ THEN Olmerch2 Emp12
@3
END
++@1 DO ~StartStore("OLBGAAE2",LastTalkedToBy(Myself))~ EXIT
++@2EXIT

CHAIN
IF ~  ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER) ~ THEN Olmerch3 Emp21
@0
END
++@1 DO ~StartStore("OLBGAAE3",LastTalkedToBy(Myself))~ EXIT
++@2EXIT

CHAIN
IF ~  ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)~ THEN Olmerch3 Emp22
@3
END
++@1 DO ~StartStore("OLBGAAE3",LastTalkedToBy(Myself))~ EXIT
++@2EXIT

CHAIN
IF~Global("StoEmporiumExists","Global",1)~THEN Olmichae Standard1
@4
END
++@5 + Upstairs
++@6 + Upstairs
++@7 + Select
++@8 + Intro

CHAIN
IF~~THEN Olmichae Upstairs
@9EXIT

CHAIN
IF~~THEN Olmichae Intro
@10 EXTERN Olmichae Select

CHAIN
IF~~THEN Olmichae Select
@11
END
++@12 + Getlost
IF~PartyHasItem("Stoscale")~THEN REPLY@13 + scales1
IF~PartyHasItem("Stoscal2")~THEN REPLY@14 + scalesB1
IF~PartyHasItem("Stoeggs")~THEN REPLY@15 + eggs1
IF~PartyHasItem("SW1H06")~THEN REPLY@16 + Varscona1
IF~Global("OLSmithBuildsPersonalWeapon","Locals",0)~THEN REPLY@17 + Selforge
IF ~  GlobalTimerExpired("OLBuildingTimer","Locals") Global("OLSmithBuildsPersonalWeapon","Locals",1)~ THEN REPLY@18 + SelforgeYes
IF ~  GlobalTimerNotExpired("OLBuildingTimer","Locals") Global("OLSmithBuildsPersonalWeapon","Locals",1)~ THEN REPLY@18 + SelforgeNo

CHAIN
IF~~THEN Olmichae SelforgeNo
@19 EXIT

CHAIN
IF~~THEN Olmichae Getlost
@20EXIT

CHAIN
IF~~THEN Olmichae scales1
@21
END
IF~PartyGoldLT(5000)~THEN REPLY@22 + Later
IF~PartyGoldGT(4999) PartyHasItem("Chan03")~THEN REPLY@23 DO~SetGlobal("OLForge","ol0815",1)TakePartyGold(5000) TakePartyItem("Stoscale") Wait(1) TakePartyItem("chan03") Wait(1) GiveItemCreate("bdchan06",Player1,0,0,0) ~EXIT
IF~!PartyHasItem("Chan03")~THEN REPLY@24 + Later
++@25+ Later

CHAIN
IF~~THEN Olmichae scalesB1
@26
=@27
END
++@28+ Later
IF~PartyGoldGT(5999) PartyHasItem("potn11")~THEN REPLY@29DO~SetGlobal("OLForge","ol0815",1)TakePartyGold(6000) TakePartyItem("potn11") Wait(1) TakePartyItem("stoscal2") Wait(1) GiveItemCreate("stoband2",Player1,0,0,0)~EXIT
++@25+ Later

CHAIN
IF~~THEN Olmichae eggs1
@30
=@31
END
++@28+ Later
++@32+ Later
IF~PartyGoldGT(3999) PartyHasItem("misc12")~THEN REPLY@29DO~SetGlobal("OLForge","ol0815",1)TakePartyGold(4000) TakePartyItem("misc12") Wait(1) TakePartyItem("stoeggs") Wait(1) GiveItemCreate("brac26",Player1,0,0,0)~EXIT
++@25+ Later

CHAIN
IF~~THEN Olmichae Varscona1
@33
=@34
END
++@28+ Later
IF~PartyGoldGT(8999) PartyHasItem("POTN04")~THEN REPLY@35DO~SetGlobal("OLForge","ol0815",1) TakePartyGold(9000) TakePartyItemNum("potn04",1) Wait(1) TakePartyItem("SW1H06") Wait(1) GiveItemCreate("OLSW1H06",Player1,0,0,0)~EXIT
++@25+ Later

CHAIN
IF ~~ THEN Olmichae Later
@36EXIT

CHAIN
IF ~~ THEN Olmichae Selforge
@37
END
++@38 + Selforge6
++@39 + Selforge7
++@40 + Selforge8
++@41 + Selforge9
++@42 + Selforge10
++@43 + Selforge11
++@44 + Selforge12
++@45 + Selforge13

CHAIN
IF ~~ THEN Olmichae Selforge6 
@46
DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1) SetGlobal("OLSword","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=@47 EXIT

CHAIN
IF ~~ THEN Olmichae Selforge7 
@48 DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1) SetGlobal("OLAxe","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS)~ 
=@47 EXIT

CHAIN
IF ~~ THEN Olmichae Selforge8 
@49 DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)
SetGlobal("OLFlail","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=@47 EXIT

CHAIN
IF ~~ THEN Olmichae Selforge9 
@50DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)  SetGlobal("OLHalberd","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=@47 EXIT

CHAIN
IF ~~ THEN Olmichae Selforge10 
@51DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1) SetGlobal("OLDagger","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=@47 EXIT

CHAIN
IF ~~ THEN Olmichae Selforge11
@52 DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)SetGlobal("OLWarhammer","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=@47 EXIT

CHAIN
IF ~~ THEN Olmichae Selforge12
@53DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)  SetGlobal("OLSpear","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=@47 EXIT

CHAIN
IF ~~ THEN Olmichae Selforge13 @54
END
++@55 + Selforge14
++@56 + Selforge15
++@57 + Selforge16
++@58 + Selforge17

CHAIN
IF ~~ THEN Olmichae Selforge14 
@59 DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1) SetGlobal("OLPlate","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",THREE_DAYS)~ 
=@47 EXIT

CHAIN
IF ~~ THEN Olmichae Selforge15
@60 DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)
SetGlobal("OLChain","LOCALS",1)SetGlobalTimer("OLBuildingTimer","Locals",THREE_DAYS) ~ 
=@47 EXIT

CHAIN
IF ~~ THEN Olmichae Selforge16 
@61 DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)
SetGlobal("OLSplint","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",THREE_DAYS) ~ 
=@47 EXIT

CHAIN
IF ~~ THEN Olmichae Selforge17
@62 DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)
SetGlobal("OLShield","LOCALS",1)SetGlobalTimer("OLBuildingTimer","Locals",THREE_DAYS) ~ 
=@47 EXIT

CHAIN
IF ~~ THEN Olmichae SelforgeYes
@63
END
IF ~  Global("OLSword","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("osw1h27",LastTalkedToBy(Myself),1,0,0) TakePartyGold(10000)DestroyGold(10000) ~ EXIT
IF ~  Global("OLAxe","LOCALS",1)~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("oax1h11",LastTalkedToBy(Myself),1,0,0) TakePartyGold(6000)DestroyGold(6000) ~ EXIT
IF ~  Global("OLFlail","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0)
GiveItemCreate("oblun39",LastTalkedToBy(Myself),1,0,0) TakePartyGold(6000) DestroyGold(6000)~ EXIT
IF ~  Global("OLHalberd","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0)GiveItemCreate("ohalb07",LastTalkedToBy(Myself),1,0,0)TakePartyGold(8000) DestroyGold(8000) ~ EXIT
IF ~  Global("OLDagger","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("odagg11",LastTalkedToBy(Myself),1,0,0)  TakePartyGold(5000) DestroyGold(5000) ~ EXIT
IF ~  Global("OLWarhammer","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("0hamm13",LastTalkedToBy(Myself),1,0,0)TakePartyGold(5000)  DestroyGold(5000) ~ EXIT
IF ~  Global("OLSpear","LOCALS",1)  ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("sper06",LastTalkedToBy(Myself),1,0,0) TakePartyGold(10000) DestroyGold(10000) ~ EXIT
IF ~  Global("OLPlate","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("plat14",LastTalkedToBy(Myself),1,0,0) TakePartyGold(7000) DestroyGold(7000) ~ EXIT
IF ~  Global("OLChain","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0)GiveItemCreate("chan13",LastTalkedToBy(Myself),1,0,0) TakePartyGold(6000) DestroyGold(6000) ~ EXIT
IF ~  Global("OLSplint","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("chan05",LastTalkedToBy(Myself),1,0,0) TakePartyGold(4000)DestroyGold(4000) ~ EXIT
IF ~  Global("OLShield","LOCALS",1)~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",2)GiveItemCreate("SHLD53",LastTalkedToBy(Myself),1,0,0) TakePartyGold(5000) DestroyGold(5000) ~ EXIT



