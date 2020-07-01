BEGIN STOGRD2
BEGIN STOGRD3

CHAIN
IF~Global("Sto_ConvincedChart","Global",2)~THEN Stogrd3 Hunger11
@0
END
++@1 + Hunger12
++@2EXIT

CHAIN
IF~Global("Sto_ConvincedChart","Global",2)~THEN Stogrd2 Hunger13
@0
END
++@1 EXTERN Stogrd3 Hunger12
++@2EXIT

CHAIN
IF~Global("Sto_ConvincedChart","Global",0)~THEN Stogrd3 Hunger1
@3
DO~SetGlobal("Sto_ConvincedChart","Global",1)~
==Stogrd2@4
END
++@5 + Hunger3
++@6 + Hunger3
++@7 + Hunger3

CHAIN
IF~Global("Sto_ConvincedChart","Global",0)~THEN Stogrd2 Hunger2
@3
DO~SetGlobal("Sto_ConvincedChart","Global",1)~
==Stogrd3@4
END
++@5EXTERN  Stogrd3 Hunger3
++@6EXTERN  Stogrd3  Hunger3
++@7EXTERN  Stogrd3 Hunger3

CHAIN
IF~~THEN Stogrd3 Hunger3
@8
==Stogrd2@9
==Stogrd3@10
END
++@11 + Hunger4
++@12 + Hunger4
++@13 + Hunger4

CHAIN
IF~Global("Sto_ConvincedChart","Global",1)~THEN Stogrd3 Hunger4
@14EXIT

CHAIN
IF~Global("Sto_ConvincedChart","Global",1)~THEN Stogrd2 Hunger5
@14EXIT

CHAIN
IF~~THEN Stogrd3 Hunger12
@15
==Stogrd2@16DO~SetGlobal("Sto_ConvincedChart","Global",3)~EXIT

CHAIN
IF WEIGHT #-2~Global("Sto_ConvincedChart","Global",1)~THEN FeCook  Hunger6   
@17
END
++@18 + Hunger7
++@19 + Hunger7
++@20EXIT

CHAIN
IF~~THEN FeCook  Hunger7
@21DO~SetGlobal("CookSent","Sto101",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("Sto_ConvincedChart","Global",1)Global("CookSent","Sto101",1)~THEN FCook2  Hunger8
@22
END
++@23 + Hunger9
++@24DO~SetGlobal("Sto_ConvincedChart","Global",2)~ + Hunger10
++@25+ Hunger9

CHAIN
IF~~ THEN FCook2  Hunger9
@26EXIT

CHAIN
IF~~ THEN FCook2  Hunger10
@27 EXIT

CHAIN
IF WEIGHT #-2~GlobalGT("Sto_ConvincedChart","Global",1)PartyHasItem("Stoeggs")~THEN FeCook  Hunger6
@17
END
++@28 + eggs1
++@19 + eggs8
++@20EXIT

CHAIN
IF~~THEN FeCook  eggs8
@29EXIT

CHAIN
IF~~THEN FeCook  eggs1
@30
END
++@31+ eggs2
++@32+ eggs3
++@33+ eggs4

CHAIN
IF~~THEN FeCook  eggs2
@34EXIT

CHAIN
IF~~THEN FeCook  eggs3
@35DO~GivePartyGold(1) TakePartyItem("Stoeggs")~EXIT

CHAIN
IF~~THEN FeCook  eggs4
@36EXIT