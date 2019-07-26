BEGIN STOGRD1
BEGIN STOGRD4
BEGIN STOHELM
BEGIN STOSELU
BEGIN STOSCAR

CHAIN 
IF~  Global("StoGotPass","GLOBAL",0)~THEN Stogrd1 Enter1
~Sorry, <SIRMAAM> but the Sea Tower is closed to all except residents and officials.~
DO~SetGlobal("StoGotPass","GLOBAL",1)~
END
++~Why that?~ + Enter2
++~When will it be open again?~ + Enter3
++~But I am a resident!~ + Enter4
++~But I am an official!~ + Enter4
IF~PartyHasItem("Stopass")~THEN REPLY~I have this document, let me pass.~ + Enter5

CHAIN
IF~ Global("StoGotPass","GLOBAL",1)~THEN Stogrd1 Enter7
~Sorry, <SIRMAAM> I told you that the Sea Tower is closed for you.~
END
++~Why that?~ + Enter2
++~When will it be open again?~ + Enter3
++~But I am a resident!~ + Enter4
++~But I am an official!~ + Enter4
IF~PartyHasItem("Stopass")~THEN REPLY~I have this document, let me pass.~ + Enter5

CHAIN
IF~~THEN Stogrd1 Enter2
~Orders from the Grand Duke.~ EXIT

CHAIN
IF~~THEN Stogrd1 Enter3
~Ask them Dukes if you dare.~ EXIT

CHAIN
IF~~THEN Stogrd1 Enter4
~Then you'd have a pass, wouldn't you, fool. Move on.~ EXIT

CHAIN
IF~~THEN Stogrd1 Enter5
~A pass from a Grand Duke, in deed. That looks fine - you can pass, <SIRMAAM>.~
DO ~Unlock("Door 09") OpenDoor("Door 09") OpenDoor("Door 13") SetGlobal("StoGotPass","GLOBAL",2) ~EXIT

CHAIN
IF~Global("StoGotPass","GLOBAL",2) ~THEN Stogrd1 Enter6
~You can pass, <SIRMAAM>.~ EXIT

CHAIN
IF WEIGHT #-2~NumberOfTimesTalkedTo(0) AreaCheck("STO100")~THEN Smuggl Alternative1
~Hey there, travelers, y'all seem to be rejected at that gate, he. Perhaps there's a reason for that, eh? Well, I shan't come across as rude: My name's Tomlin, and I'm the guy to make things happen, ya know.~
END
++~You mean that you can bring us inside? How much will it cost?~+ Alternative2
++~It's none of your concern.~ + Alt1Gone

CHAIN
IF~~THEN Smuggl Alt1Gone
~'kay, <PRO_MANWOMAN>, ya boss here. That's your lucky day maybe.~DO~EscapeArea()~EXIT

CHAIN
IF~~THEN Smuggl Alternative2
~Straight to the matter, that's how I like it, boss. There's a back entrance, ya know. My boat knows the way. It'll cost you 2000 gold, that's all.~
END
++~I don't have that much money to spend.~ + Alt1Gone
++~I don't have the money right now. I'll be back in a while.~+ AltGone2
++~Hm, I just have to get inside, man. You have a deal.~DO~SetGlobal("StoGotPass","GLOBAL",65)~ + MoveBackside
++~I'd rather not risk my reputation by dealing with smugglers. We'll find another way to get inside.~+ Alt1Gone

CHAIN
IF~~THEN Smuggl AltGone2
~What <PRO_MANWOMAN>? I'd not stand longer than a minute in this here spot. That guards already looks our way...~DO~EscapeArea()~EXIT

CHAIN
IF~~THEN Smuggl MoveBackside
~A good decis'n <PRO_MANWOMAN>, ya boss here. That's your lucky day maybe.~DO~TakePartyGold(2000) ClearAllActions() StartCutSceneMode() Wait(1) StartCutScene("StoCut1")~EXIT

CHAIN
IF WEIGHT #-2~AreaCheck("Sto100")~THEN RSDMnk01 Seltow3
~Welcome wanderer and seekers, may Our Lady of Silver light your way. Come into Selune's temple if you seek the maiden's service.~EXIT

CHAIN
IF ~RandomNum(2,0)~ THEN STOGRD4 g0
~Let me see your pass... yes, this does allow you access, keep moving.~ EXIT

CHAIN
IF ~RandomNum(2,1)~ THEN STOGRD4 g1
~Afraid of ghosts, are we?~  EXIT

CHAIN
IF ~RandomNum(2,2)~ THEN STOGRD4 g2
~This existence is so... empty.~ EXIT