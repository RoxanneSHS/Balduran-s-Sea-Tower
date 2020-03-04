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
IF~Global("OLSmithBuildsPersonalWeapon","Locals",0)~THEN REPLY~I'd like to commission work for some enhanced equipment.~ + Selforge
IF ~  GlobalTimerExpired("OLBuildingTimer","Locals") Global("OLSmithBuildsPersonalWeapon","Locals",1)~ THEN REPLY~Is my commission ready?~ + SelforgeYes
IF ~  GlobalTimerNotExpired("OLBuildingTimer","Locals") Global("OLSmithBuildsPersonalWeapon","Locals",1)~ THEN REPLY~Is my commission ready?~ + SelforgeNo

CHAIN
IF~~THEN Olmichae SelforgeNo
~I ain't done yet, and it won't be gittin' any closer ta bein' ferged if ya don't leave me 'lone.~ EXIT

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

CHAIN
IF ~~ THEN Olmichae Selforge
~I can be doing a swerd, axe, or flail fer ya. Ya can pay me 4000 gold plus expenses. Wut kind of a weapon ya want?~
END
++~A sword.~ + Selforge6
++~An axe.~ + Selforge7
++~A flail.~ + Selforge8
++~A halberd.~ + Selforge9
++~Just a small dagger please.~ + Selforge10
++~Can you please make me a warhammer?~ + Selforge11
++~How about a spear?~ + Selforge12
++~Are you any good at crafting armor?~ + Selforge13

CHAIN
IF ~~ THEN Olmichae Selforge6 
~A swerd is somethin' no warria should be withot. I'll be fergin' ye one, jus as long as ye be payin' me.~
DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1) SetGlobal("OLSword","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=~I's be gittin' ta work.  Come see me in a few days.  It'll be ready.~ EXIT

CHAIN
IF ~~ THEN Olmichae Selforge7 
~A waraxe is my choice in a weapen. I'll be fergin' ye one, jus as long as ye be payin' me.~ DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1) SetGlobal("OLAxe","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS)~ 
=~I's be gittin' ta work.  Come see me in a few days.  It'll be ready.~ EXIT

CHAIN
IF ~~ THEN Olmichae Selforge8 
~A 'eavy flail is somethin' quite dangrous in the 'ands of a skilled warrior. I'll be fergin' ye one, jus as long as ye be payin' me.~ DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)
SetGlobal("OLFlail","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=~I's be gittin' ta work.  Come see me in a few days.  It'll be ready.~ EXIT

CHAIN
IF ~~ THEN Olmichae Selforge9 
~A long 'alb'd is somethin' ye look good at. I'll be fergin' ye one, jus as long as ye be payin' me.~DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)  SetGlobal("OLHalberd","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=~I's be gittin' ta work.  Come see me in a few days.  It'll be ready.~ EXIT

CHAIN
IF ~~ THEN Olmichae Selforge10 
~A small dagga?  That's yer choice. I'll be fergin' ye one, jus as long as ye be payin' me.~DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1) SetGlobal("OLDagger","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=~I's be gittin' ta work.  Come see me in a few days.  It'll be ready.~ EXIT

CHAIN
IF ~~ THEN Olmichae Selforge11
~A war'amma be my choice of a weapen. I'll be fergin' ye one, jus as long as ye be payin' me.~ DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)SetGlobal("OLWarhammer","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=~I's be gittin' ta work.  Come see me in a few days.  It'll be ready.~ EXIT

CHAIN
IF ~~ THEN Olmichae Selforge12
~A shap sper be good fer skewe'in' wil' orcs. I'll be fergin' ye one, jus as long as ye be payin' me.~DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)  SetGlobal("OLSpear","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",TWO_DAYS) ~ 
=~I's be gittin' ta work.  Come see me in a few days.  It'll be ready.~ EXIT

CHAIN
IF ~~ THEN Olmichae Selforge13 ~Jus as long as ya gots gold. Wut kind of arma ya lookin' fer?~
END
++~Plate mail.~ + Selforge14
++~Chain mail.~ + Selforge15
++~Splint.~ + Selforge16
++~I'd like a shield.~ + Selforge17

CHAIN
IF ~~ THEN Olmichae Selforge14 
~A sturdie suit of plate it is then.~ DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1) SetGlobal("OLPlate","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",THREE_DAYS)~ 
=~I's be gittin' ta work.  Come see me in a few days.  It'll be ready.~ EXIT

CHAIN
IF ~~ THEN Olmichae Selforge15
~A decent suit of chain I'll be forgin' fer ya then.~ DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)
SetGlobal("OLChain","LOCALS",1)SetGlobalTimer("OLBuildingTimer","Locals",THREE_DAYS) ~ 
=~I's be gittin' ta work.  Come see me in a few days.  It'll be ready.~ EXIT

CHAIN
IF ~~ THEN Olmichae Selforge16 
~I can be forgin' ya up some splint mail.~ DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)
SetGlobal("OLSplint","LOCALS",1) SetGlobalTimer("OLBuildingTimer","Locals",THREE_DAYS) ~ 
=~I's be gittin' ta work.  Come see me in a few days.  It'll be ready.~ EXIT

CHAIN
IF ~~ THEN Olmichae Selforge17
~Jus' a shild?  Shure, I can be doin' that fer ya.~ DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",1)
SetGlobal("OLShield","LOCALS",1)SetGlobalTimer("OLBuildingTimer","Locals",THREE_DAYS) ~ 
=~I's be gittin' ta work.  Come see me in a few days.  It'll be ready.~ EXIT

CHAIN
IF ~~ THEN Olmichae SelforgeYes
~Aye, I finished up the fergin'.  'ere, take a look.~
END
IF ~  Global("OLSword","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("sw1h27",LastTalkedToBy(Myself),1,0,0) TakePartyGold(10000)DestroyGold(10000) ~ EXIT
IF ~  Global("OLAxe","LOCALS",1)~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("ax1h11",LastTalkedToBy(Myself),1,0,0) TakePartyGold(6000)DestroyGold(6000) ~ EXIT
IF ~  Global("OLFlail","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0)
GiveItemCreate("blun39",LastTalkedToBy(Myself),1,0,0) TakePartyGold(6000) DestroyGold(6000)~ EXIT
IF ~  Global("OLHalberd","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0)GiveItemCreate("halb07",LastTalkedToBy(Myself),1,0,0)TakePartyGold(8000) DestroyGold(8000) ~ EXIT
IF ~  Global("OLDagger","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("dagg11",LastTalkedToBy(Myself),1,0,0)  TakePartyGold(5000) DestroyGold(5000) ~ EXIT
IF ~  Global("OLWarhammer","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("hamm13",LastTalkedToBy(Myself),1,0,0)TakePartyGold(5000)  DestroyGold(5000) ~ EXIT
IF ~  Global("OLSpear","LOCALS",1)  ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("sper06",LastTalkedToBy(Myself),1,0,0) TakePartyGold(10000) DestroyGold(10000) ~ EXIT
IF ~  Global("OLPlate","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("plat14",LastTalkedToBy(Myself),1,0,0) TakePartyGold(7000) DestroyGold(7000) ~ EXIT
IF ~  Global("OLChain","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0)GiveItemCreate("chan13",LastTalkedToBy(Myself),1,0,0) TakePartyGold(6000) DestroyGold(6000) ~ EXIT
IF ~  Global("OLSplint","LOCALS",1) ~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",0) GiveItemCreate("chan05",LastTalkedToBy(Myself),1,0,0) TakePartyGold(4000)DestroyGold(4000) ~ EXIT
IF ~  Global("OLShield","LOCALS",1)~ THEN DO ~SetGlobal("OLSmithBuildsPersonalWeapon","Locals",2)GiveItemCreate("SHLD53",LastTalkedToBy(Myself),1,0,0) TakePartyGold(5000) DestroyGold(5000) ~ EXIT



