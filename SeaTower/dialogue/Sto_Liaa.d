CHAIN
IF~Global("STO_ScarDoppel","Global",2)~THEN StoLiia Help1
~You there, it seems you don't belong to the Rashemen wizard and his lackeys. Come over here...please.~
END
++~Another doppelganger, better stay caged, creature.~ + Help2
++~You seem to know something about what is going on here?~ + Help2
++~How could I ignore a damsel in distress!~ + Help3

CHAIN
IF~~THEN StoLiia Help3
~Try to be funny. I'm not used to ask people for help, but - mhh - my current choices are limited by these bars.~ EXTERN StoLiia Help2

CHAIN
IF~~THEN StoLiia Help2
~I'm a mage of no small skill, but this cage cuts my abilities somehow. No, I'm not one of those...doppelgangers, I guess they are. But there's one that comes and studies me, I think he's learning to be - me.~
=~Introductions seem to be in order. I am Liia Jannath, one of the Dukes of Baldur's Gate.~
END
++~That explains probably why you are here. My name is <CHARNAME>.~+ Help4
++~<CHARNAME> of Candlekeep at your service.~+ Help4

CHAIN
IF~~THEN StoLiia Help4
~We should continue this conversation once I am free, the key must be somewhere around these rooms. Those minions used it frequently on the various cages.~
END
++~Don't go away, I'll be right back.~DO~SetGlobal("STO_ScarDoppel","Global",3)~EXIT
IF~PartyHasItem("StoCell")~ THEN REPLY~I think I have that key already.~+ Help6
++~I will consider it.~DO~SetGlobal("STO_ScarDoppel","Global",3)~EXIT

CHAIN
IF~Global("STO_ScarDoppel","Global",3) PartyHasItem("StoCell")~ THEN StoLiia Help5
~Waste no time, <CHARNAME>, open the door before we raise some alert and things get nasty.~
END
++~I hope I do the right thing, we'll soon see if your story is true.~DO~TakePartyItem("Stocell") DestroyItem("Stocell") SetGlobal("STO_ScarDoppel","Global",4)~EXIT
++~Here you go.~DO~TakePartyItem("Stocell") DestroyItem("Stocell") SetGlobal("STO_ScarDoppel","Global",4)~EXIT

CHAIN
IF~~ THEN StoLiia Help6
~Waste no time, <CHARNAME>, open the door before we raise some alert and things get nasty.~
END
++~I hope I do the right thing, we'll soon see if your story is true.~DO~TakePartyItem("Stocell") DestroyItem("Stocell") SetGlobal("STO_ScarDoppel","Global",4)~EXIT
++~Here you go.~DO~TakePartyItem("Stocell") DestroyItem("Stocell") SetGlobal("STO_ScarDoppel","Global",4)~EXIT

CHAIN
IF~Global("STO_ScarDoppel","Global",5)~THEN StoLiia Imoen1
~That is much better. You have the thanks of the Dukes of Baldur's Gate, <CHARNAME>. Know that your name is not unfamiliar for me.~
DO~SetGlobal("STO_ScarDoppel","Global",6)~
=~So the girl Imoen must be with you as well, where is she?~
==%IMOEN_JOINED% IF~InParty("%IMOEN_DV%")~THEN~Heya, that's me, lady duke ma'am. I'm Imoen the Magnificent in person.~
==StoLiia IF~InParty("%IMOEN_DV%")~THEN~I am pleased to meet you, Imoen. You and me, we need to talk when this is over. I once gave Winthrop my word to look after your education when the time has come.~
==%IMOEN_JOINED% IF~InParty("%IMOEN_DV%")~THEN~Education, eh? Well, I had all I need at Candlekeep I think. Now my school is the adventuring life.~
==StoLiia IF~InParty("%IMOEN_DV%")~THEN~Oh, you will see there is a new type of learning that is fun, girl. But first let us get out of here before we talk about other plans.~
END
IF~InParty("%IMOEN_DV%")~THEN REPLY~The way out of here should be clear, now that you are free again.~+ Imoen2
IF~!InParty("%IMOEN_DV%")~THEN REPLY~I left Imoen out of these dangers for various reasons.~ + Imoen3

CHAIN
IF~~THEN StoLiia Imoen2
~I will take the road out of here that you have cleared of foe. I need to inform and warn the other Dukes before it is too late. I would ask that you do us one favour. You seem to be the right person for it.~
=~Move as far into the dungeon as you can. Maybe you find the Othlor - that Rashemen wizard - who seems to be in charge here. Report to Scar whatever you find out. Good luck, <CHARNAME>~EXIT

CHAIN
IF~~THEN StoLiia Imoen3
~I see. Well, there will be other means to keep the promise I gave to Winthrop and Gorion back then.~ EXTERN StoLiia Imoen2

I_C_T Liia 2 StoLiiaPalace
==Liia IF~GlobalGT("STO_ScarDoppel","Global",6) GlobalLT("STO_ScarDoppel","Global",12)~THEN~I have been recently freed from the confinement by doppelgangers. Someone uses such creatures to mislead us. The person who freed me can witness my statement, <PRO_HESHE> is here today to give us details...~
END