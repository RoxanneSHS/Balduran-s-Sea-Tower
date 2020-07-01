BEGIN Stodrago

EXTEND_TOP Halbaz 0 #1
IF ~Global("StoDragonspell","Global",2)~THEN REPLY @0+ Stospell1
IF~PartyHasItem("Stoeggs")~THEN REPLY@1 + Haleggs1
END

CHAIN
IF ~~ THEN Halbaz Haleggs1
@2
=@3EXIT

CHAIN
IF~~THEN Halbaz Stospell1
@4
=@5
END
IF~PartyHasItem("Scrl6q")~THEN REPLY@6 + Stospell1a
IF~!PartyHasItem("Scrl6q")~THEN REPLY@7+ Stospell1b

CHAIN
IF~~THEN Halbaz Stospell1b
@8EXIT

CHAIN
IF~~THEN Halbaz Stospell1a
@9
END
++@10+ Stospell1c
++@11 + Stospell1c
IF~NumItemsPartyGT("Misc42",1) !PartyHasItem("Stoskul")~THEN REPLY@12 + Stospell1c
IF~NumItemsPartyLT("Misc42",2) PartyHasItem("Stoskul")~THEN REPLY@13  + Stospell1c
IF~NumItemsPartyGT("Misc42",1) PartyHasItem("Stoskul")~THEN REPLY@14+ Stospell2

CHAIN
IF~~THEN Halbaz Stospell1c
@15EXIT

CHAIN
IF~~THEN Halbaz Stospell2
@16DO~SetGlobal("StoDragonspell","Global",3) ClearAllActions() Wait(1)StartCutSceneMode() StartCutScene("Stocut2")~ EXIT

EXTEND_TOP MCook4 0 #0
IF ~PartyHasItem("Stoeggs")~THEN REPLY @17 + eggs1
END

CHAIN
IF~~THEN MCook4  eggs1
@18
END
++@19+ eggs2
++@20+ eggs3
++@21+ eggs4

CHAIN
IF~~THEN MCook4  eggs2
@22EXIT

CHAIN
IF~~THEN MCook4  eggs3
@23DO~GivePartyGold(5) TakePartyItem("Stoeggs")~EXIT

CHAIN
IF~~THEN MCook4  eggs4
@24EXIT