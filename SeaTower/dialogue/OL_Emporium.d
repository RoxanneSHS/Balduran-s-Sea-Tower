BEGIN Olmrch1
BEGIN Olmerch2
BEGIN Olmerch3
BEGIN Olmichae

CHAIN
IF ~  ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER) ~ THEN Olmrch1 Emp1
~ 'Ello, friends. Welcome, and make yourselves at home. Just try not to rattle the locals none, okay? Times is pretty harsh right now, and people don't need any more trouble than they've got. So, what can I do for you?~
END
++~Show me your list of services.~ DO ~StartStore("OLBGAAE1",LastTalkedToBy(Myself))~ EXIT
++~Nothing.~EXIT

CHAIN
IF ~  ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)~ THEN Olmrch1 Emp2
~ 'Ere there. I want's no trouble from you roustabouts. Looks ta me like you wuz probably thrown outta every other bar in town. Well, if you act up, you'll get the same treatment here. Otherwise, welcome. So, what can I do for you?~
END
++~Show me your list of services.~ DO ~StartStore("OLBGAAE1",LastTalkedToBy(Myself))~ EXIT
++~Nothing.~EXIT

CHAIN
IF ~  ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER) ~ THEN Olmerch2 Emp11
~ 'Ello, friends. Welcome, and make yourselves at home. Just try not to rattle the locals none, okay? Times is pretty harsh right now, and people don't need any more trouble than they've got. So, what can I do for you?~
END
++~Show me your list of services.~ DO ~StartStore("OLBGAAE2",LastTalkedToBy(Myself))~ EXIT
++~Nothing.~EXIT

CHAIN
IF ~  ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)~ THEN Olmerch2 Emp12
~ 'Ere there. I want's no trouble from you roustabouts. Looks ta me like you wuz probably thrown outta every other bar in town. Well, if you act up, you'll get the same treatment here. Otherwise, welcome. So, what can I do for you?~
END
++~Show me your list of services.~ DO ~StartStore("OLBGAAE2",LastTalkedToBy(Myself))~ EXIT
++~Nothing.~EXIT

CHAIN
IF ~  ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER) ~ THEN Olmerch3 Emp21
~ 'Ello, friends. Welcome, and make yourselves at home. Just try not to rattle the locals none, okay? Times is pretty harsh right now, and people don't need any more trouble than they've got. So, what can I do for you?~
END
++~Show me your list of services.~ DO ~StartStore("OLBGAAE3",LastTalkedToBy(Myself))~ EXIT
++~Nothing.~EXIT

CHAIN
IF ~  ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)~ THEN Olmerch3 Emp22
~ 'Ere there. I want's no trouble from you roustabouts. Looks ta me like you wuz probably thrown outta every other bar in town. Well, if you act up, you'll get the same treatment here. Otherwise, welcome. So, what can I do for you?~
END
++~Show me your list of services.~ DO ~StartStore("OLBGAAE3",LastTalkedToBy(Myself))~ EXIT
++~Nothing.~EXIT

CHAIN
IF~Global("StoEmporiumExists","Global",1)~THEN Olmichae Standard1
~ 'Allo, friend, our door's always open to our revered customers. Wot can I do for you this day?~
END
++~I'm just browsing about your smithy. I have heard much about it.~ + Upstairs
++~Show me your services.~ + Upstairs
++~I may have some items you can use to forge something special.~ + Select
++~I heard you can do wonders with your hammer to enhance weapons and armour?~ + Intro

CHAIN
IF~~THEN Olmichae Upstairs
~You can expect nothing but the best in quality from the Emporium. Best armours in the land. If you need some help, don't hesitate to speak to the merchant upstairs.~EXIT

CHAIN
IF~~THEN Olmichae Intro
~Friend, if you got the coin and you got the mat'rial I need - then and only then you may see wonders come true.~ EXTERN Olmichae Select

CHAIN
IF~~THEN Olmichae Select
~So what do you have that may be worth the master's attention? Master Michael and that's me in case you haven't figured it out yet.~
END
++~Actually it seems I have nothing to test your abilities right now.~ + Getlost
IF~PartyHasItem("Stoscale")~THEN REPLY~Can you use these dragon scales for a purpose?~ + scales1
IF~PartyHasItem("Stoscal2")~THEN REPLY~Can you use these broken dragon scales for a purpose?~ + scalesB1
IF~PartyHasItem("Stoeggs")~THEN REPLY~Can you use these dragon eggs for a purpose?~ + eggs1
IF~PartyHasItem("SW1H06")~THEN REPLY~Is there a way to make this Varscona better?~ + Varscona1

CHAIN
IF~~THEN Olmichae Getlost
~Well, I would appreciate it if you would be quick about leavin'. Don't need you in here crowding about while I try to work. I not care for loiterers. If you need any ready made stuff, speak directly to my merchant upstairs. Be gone.~EXIT

CHAIN
IF~~THEN Olmichae scales1
~Oh, black dragon scales, is it? I could make Stalwart Scales armour from them. It will cost you a mere 5,000 gp and requires a Mail of the Dead as a basis.~
END
IF~PartyGoldLT(5000)~THEN REPLY~I don't have that much gold.~ + Later
IF~PartyGoldGT(4999) PartyHasItem("Chan03")~THEN REPLY~Sure, go ahead.~ DO~SetGlobal("OLForge","ol0815",1)TakePartyGold(5000) TakePartyItem("Stoscale") Wait(1) TakePartyItem("chan03") Wait(1) GiveItemCreate("bdchan06",Player1,0,0,0) ~EXIT
IF~!PartyHasItem("Chan03")~THEN REPLY~I don't have that chain mail yet.~ + Later
++~I have no interest in it for the moment.~+ Later

CHAIN
IF~~THEN Olmichae scalesB1
~Yeah, broken they are but fine mat'rial nonetheless. That's enough for some pretty good helmet.~
=~Here's my offer - I need those scales, a potion of invulnerability, and 6000GP to make you a Band of the Missing Page.~
END
++~I'll keep looking for these items, see you later.~+ Later
IF~PartyGoldGT(5999) PartyHasItem("potn11")~THEN REPLY~The stuff you need is here at your disposal.~DO~SetGlobal("OLForge","ol0815",1)TakePartyGold(6000) TakePartyItem("potn11") Wait(1) TakePartyItem("stoscal2") Wait(1) GiveItemCreate("stoband2",Player1,0,0,0)~EXIT
++~I have no interest in it for the moment.~+ Later

CHAIN
IF~~THEN Olmichae eggs1
~Black Dragon's eggs. Only very few know that Tzu-Zan bracers are made out of those. Quite usable for a monk.~
=~Here's my offer - I need those eggs, an Ankheg shell, plus 4000GP to make them for you.~
END
++~I'll keep looking for these items, see you later.~+ Later
++~I have no need for monkish stuff, sorry no deal.~+ Later
IF~PartyGoldGT(3999) PartyHasItem("misc12")~THEN REPLY~The stuff you need is here at your disposal.~DO~SetGlobal("OLForge","ol0815",1)TakePartyGold(4000) TakePartyItem("misc12") Wait(1) TakePartyItem("stoeggs") Wait(1) GiveItemCreate("brac26",Player1,0,0,0)~EXIT
++~I have no interest in it for the moment.~+ Later

CHAIN
IF~~THEN Olmichae Varscona1
~That's a damn good weapon. But damn good doesn't mean it can't be made even better.~
=~Here's my offer - I need a Potion of Frost Giant Strength and 9000GP to make you a Varscona +3, a delightful weapon it'll be.~
END
++~I'll keep looking for these items, see you later.~+ Later
IF~PartyGoldGT(8999) PartyHasItem("POTN04")~THEN REPLY~I have those things right here.~DO~SetGlobal("OLForge","ol0815",1) TakePartyGold(9000) TakePartyItemNum("potn04",1) Wait(1) TakePartyItem("SW1H06") Wait(1) GiveItemCreate("OLSW1H06",Player1,0,0,0)~EXIT
++~I have no interest in it for the moment.~+ Later

CHAIN
IF ~~ THEN Olmichae Later
~My fires are blazing night 'n' day. Come back whenever you like.~EXIT
