ADD_STATE_TRIGGER Hull 1
~Global("HelpHull","GLOBAL",0)~

ADD_STATE_TRIGGER Hull 3
~Global("HelpHull","GLOBAL",0)~

CHAIN
IF WEIGHT #-1~Global("HelpHull","GLOBAL",1) HasItem("olsw1h12",Myself) Global("OLBuySword","Locals",0) ~ THEN HULL Sellsw1
~Thanks for retrieving my heirloom, <CHARNAME>. Is there anything I can help you with?~
DO~SetGlobal("OLBuySword","Locals",1)~
END
IF~CheckStatGT(Player1,9,INT)CheckStatGT(Player1,13,CHR)~THEN REPLY~I have a dangerous journey ahead of me. I may have a better use for your sword than you guarding these inpenetrable walls. I wonder if you had ever consiodered parting with it.~+ SellswY1
IF~OR(2) CheckStatLT(Player1,10,INT)CheckStatLT(Player1,14,CHR)~THEN REPLY~I have a dangerous journey ahead of me. I may have a better use for your sword than you guarding these inpenetrable walls. I wonder if you had ever consiodered parting with it.~+ SellswN1
++~No, thanks, have a good day, Hull.~ EXIT

CHAIN
IF~~THEN HULL  SellswN1
~Sorry, old friend, but even for my respect for Gorion...this sword has been passed down two generations to me from my late grandfather Keel. I want to pass it to my kid one day.~DO~SetGlobal("OLBuySword","Locals",9)~EXIT

CHAIN
IF~~THEN HULL  SellswY1
~I have large respect for Gorion...this sword has been passed down two generations to me from my late grandfather Keel. I always wanted to pass it to my kid one day, (Sigh) but...~
=~Maybe I won't have kids and maybe I would regret one day to have let you go without protection.~
=~I think I might part from it for an adequate compensation.~
END
++~What would that compensation be?~+ SellSum
++~Let me hear your conditions.~ + SellSum

CHAIN
IF~~THEN HULL  SellSum
~I think that 315 Gold is an adequate price for this quality weapon and the hisrory that goes with it. After all, I always preferred training with halberds and quarterstaves anyway.~
END
++~You disapoint me, Hull. Trying to make money out of other people's trouble. Forget it.~ DO~SetGlobal("OLBuySword","Locals",9)~EXIT
IF~PartyGoldLT(315)~THEN REPLY~I don't have that sum yet. See you later.~DO~SetGlobal("OLBuySword","Locals",2) ~EXIT
IF~PartyGoldGT(314)~THEN REPLY~We have a deal then, Hull.~DO~SetGlobal("OLBuySword","Locals",3)TakePartyGold(315) Wait(1) GiveItem("olsw1h12",Player1)~EXIT
++~I have to think about it. See you later.~DO~SetGlobal("OLBuySword","Locals",2) ~EXIT

CHAIN
IF WEIGHT #-1~HasItem("olsw1h12",Myself) Global("OLBuySword","Locals",2) ~ THEN HULL Sellsw4
~What can I do for you this time, <CHARNAME>?~
END
IF~PartyGoldGT(314)~THEN REPLY~We have a deal, Hull. I come to buy your sword.~DO~SetGlobal("OLBuySword","Locals",3)TakePartyGold(315) Wait(1) GiveItem("olsw1h12",Player1)~EXIT
++~Just passing by to say hello.~EXIT
IF~PartyGoldLT(315)~THEN REPLY~I'm still trying to gain the sum to buy your sword, see you later.~EXIT
