ADD_STATE_TRIGGER Hull 1
~Global("HelpHull","GLOBAL",0)~

ADD_STATE_TRIGGER Hull 3
~Global("HelpHull","GLOBAL",0)~

CHAIN
IF WEIGHT #-1~Global("HelpHull","GLOBAL",1) HasItem("olsw1h12",Myself) Global("OLBuySword","Locals",0) ~ THEN HULL Sellsw1
@0
DO~SetGlobal("OLBuySword","Locals",1)~
END
IF~CheckStatGT(Player1,9,INT)CheckStatGT(Player1,13,CHR)~THEN REPLY@1+ SellswY1
IF~OR(2) CheckStatLT(Player1,10,INT)CheckStatLT(Player1,14,CHR)~THEN REPLY@1+ SellswN1
++@2 EXIT

CHAIN
IF~~THEN HULL  SellswN1
@3DO~SetGlobal("OLBuySword","Locals",9)~EXIT

CHAIN
IF~~THEN HULL  SellswY1
@4
=@5
=@6
END
++@7+ SellSum
++@8 + SellSum

CHAIN
IF~~THEN HULL  SellSum
@9
END
++@10 DO~SetGlobal("OLBuySword","Locals",9)~EXIT
IF~PartyGoldLT(315)~THEN REPLY@11DO~SetGlobal("OLBuySword","Locals",2) ~EXIT
IF~PartyGoldGT(314)~THEN REPLY@12DO~SetGlobal("OLBuySword","Locals",3)TakePartyGold(315) Wait(1) GiveItem("olsw1h12",Player1)~EXIT
++@13DO~SetGlobal("OLBuySword","Locals",2) ~EXIT

CHAIN
IF WEIGHT #-1~HasItem("olsw1h12",Myself) Global("OLBuySword","Locals",2) ~ THEN HULL Sellsw4
@14
END
IF~PartyGoldGT(314)~THEN REPLY@15DO~SetGlobal("OLBuySword","Locals",3)TakePartyGold(315) Wait(1) GiveItem("olsw1h12",Player1)~EXIT
++@16EXIT
IF~PartyGoldLT(315)~THEN REPLY@17EXIT
