CHAIN
IF~GlobalLT("STO_ScarDoppel","Global",3)~THEN Stohelm HeSuspicion1
~Welcome to the Watchful Shield. Our devotion to He of the Unsleeping Eye is unswerving. Anyone who regularly entered by the gate is a welcome sight these days.~
END
++~Sorry, the thought of being watched by some kind of ceaseless eye disturbs me immensely. I'll find my own way out.~ + HeSuspicion2
IF~Global("SaidStrange","Locals",0)~THEN REPLY~This sounds to me like the Unsleeping Eye sees disturbing things around the tower?~ + HeSuspicion2
++~I'd like to see what services you have to provide.~DO ~StartStore("tem0002",LastTalkedToBy(Myself)) ~ EXIT
IF~Global("StoGhostHead","Global",1)Global("AskHeads","Locals",0)~THEN REPLY~Do you know anything about people that may have been beheaded at the Sea Tower in the past?~DO~SetGlobal("AskHeads","Locals",1)~ + HeadsH1

CHAIN
IF ~  True() ~ THEN Stohelm Routine
~Welcome to the Watchful Shield. Our devotion to He of the Unsleeping Eye is unswerving. Please, allow us to shield and protect you under the ceaseless gaze of Helm.~
END
++~Sorry, the thought of being watched by some kind of ceaseless eye disturbs me immensely. I'll find my own way out.~ EXIT
++~I'd like to see what services you have to provide.~DO ~StartStore("tem0002",LastTalkedToBy(Myself)) ~ EXIT
IF~Global("StoGhostHead","Global",1)Global("AskHeads","Locals",0)~THEN REPLY~Do you know anything about people that may have been beheaded at the Sea Tower in the past?~DO~SetGlobal("AskHeads","Locals",1)~ + HeadsH1

CHAIN
IF~~THEN Stohelm HeSuspicion2
~There are unhealthy things going on in the Sea Tower, especially at night. When I go outside to smoke my last pipe I see people leaving I never saw before and I never saw them coming.~
DO~SetGlobal("SaidStrange","Locals",1)~
=~This is a secluded area with strict control by the Sea Watch. Everybody knows everybody else and visitors with a Duke's pass are a rare thing. Who would come from the library after dark when it's closed?~
END
++~Interesting, we will keep our eyes open while we are here. We will leave with the faces we have right now.~EXIT
++~Interesting, I'd like to see what services you have to provide.~DO ~StartStore("tem0002",LastTalkedToBy(Myself)) ~ EXIT

CHAIN
IF~~THEN Stohelm HeadsH1
~The Selune Temple on the other end is built on the former execution site. They may know about the history of the place. All of this happened before the Eye of Helm took watch of this place.~EXIT

CHAIN
IF ~  True() ~ THEN Stoselu RoutineSel
~Welcome wanderer and seekers, may Our Lady of Silver light your way. Is any of you a follower of the Moon Maiden?~
END
IF~InParty("Rasaad")~THEN REPLY~Rassaad yn Bashir here is a sun soul monk. We'd like to see what services you have to provide.~DO ~StartStore("olselune",LastTalkedToBy(Myself)) ~ EXIT
++~Sorry, no but I've always loved to listen to the stories of the night white lady and the man in the moon and such.~ EXIT
IF~!InParty("Rasaad")~THEN REPLY~No, but we're questers and seekers and may have use for what services you have to provide.~DO ~StartStore("olselune",LastTalkedToBy(Myself)) ~ EXIT
IF~Global("StoGhostHead","Global",1)~THEN REPLY~Do you know anything about people that may have been beheaded at the Sea Tower in the past?~ + Heads2
IF~Global("StoDragonspell","Global",1)Global("Sto_Dragon","Global",2)~THEN REPLY~You sell those teleportation scrolls but they are not strong enough for the purpose I have. I need something to move a mountain...eh...I mean a dragon.~+ DraMo1
IF~PartyHasItem("Stoeggs")~THEN REPLY~Can you use these dragon eggs for a purpose?~ + Seluneggs1

CHAIN
IF ~~ THEN Stoselu Seluneggs1
~Dragon eggs? What could Selune probably do with them?.~
=~Maybe a cook in the Ducal Palace or Balduran's library can use them to make scrambled eggs for all.~EXIT

CHAIN
IF~~THEN Stoselu DraMo1
~I will not ask you why you need such a thing because I don't have it. The only despicable place to sell such obscure artefacts could be that *Sorcerous Sundries*. Now leave.~
DO~SetGlobal("StoDragonspell","Global",2)~EXIT

CHAIN
IF~~THEN Stoselu Heads2
~That was long ago and before even our temple was built.~
DO~SetGlobal("StoGhostHead","Global",2)~
=~Actually...now that you mention it, this temple was built on the site of the former block used by the executioner. Of course we sanctified the place first.~
END
++~What happened to the remains of those who died here?~ + Heads3
++~Where did they bring the heads, the skulls, of the convicts?~ + Heads3

CHAIN
IF~~THEN Stoselu Heads3
~The executed were pirates. Before building the temple could commence, their remains had to be exhumed. Due to their nature, this was done by Umberlee's priests. I neither know nor care what those disgusting heretics did with pirate skulls and bones. Now excuse me.~EXIT


CHAIN
IF ~Global("Stoscales","Locals",2)~ THEN Stotronk Tronkscales21
~Not too bad, given that one can hardly practice with that material beforehand.~
=~May it serve you well.~DO~SetGlobal("Stoscales","Locals",3) GiveItemCreate("stobrarm",Player1,0,0,0)~EXIT

CHAIN
IF ~!Global("Stoscales","Locals",2)~ THEN Stotronk RoutineTronk
~ 'Allo, friend, wot can I do for you this day?~
END
++~No need to trouble yourself, I'm just browsing about your smithy. I have heard much about it.~ + RoutineTronk2
++~Could you show us what you have for sale?~DO~ StartStore("olblksmt",LastTalkedToBy(Myself))~EXIT
IF~Global("StoEmporiumExists","Global",0)PartyHasItem("Stoscale")~THEN REPLY~Can you use these dragon scales for a purpose?~ + Tronkscales1
++~Nothing, thanks. I was just leaving.~+ RoutineTronk2
IF~Global("StoEmporiumExists","Global",1)PartyHasItem("Stoscale")~THEN REPLY~Can you use these dragon scales for a purpose?~ + Tronkscales11
IF~PartyHasItem("Stoeggs")~THEN REPLY~Can you use these dragon eggs for a purpose?~ + Tronkseggs1

CHAIN
IF ~~ THEN Stotronk RoutineTronk2
~Thanks and fare thee well then.~EXIT

CHAIN
IF ~~ THEN Stotronk Tronkseggs1
~Dragon eggs? What could a smith probably do with them?.~
=~The only despicable place to buy such obscure artefacts could be that *Sorcerous Sundries*.~EXIT

CHAIN
IF ~~ THEN Stotronk Tronkscales1
~Oh, black dragon scales, is it? I could attempt to make a scale armour from them. It will cost you a mere 5,000 gp.~
END
IF~PartyGoldLT(5000)~THEN REPLY~I don't have that much gold.~ + Tronkscales3
IF~PartyGoldGT(4999)~THEN REPLY~Sure, go ahead.~DO~SetGlobal("Stoscales","Locals",2)TakePartyGold(5000) TakePartyItem("Stoscale") DestroyItem("Stoscale") ActionOverride("Stotronk",Face(6))~+ Tronkscales2
++~I have no interest in it for the moment.~+ Tronkscales3

CHAIN
IF ~~ THEN Stotronk Tronkscales11
~I could but maybe you should consider bringing them to the Armour Emporium. They ask their price for sure but can provide better ware than humble Tronk.~
END
++~Tell me what you can do with them so that I may decide.~+ Tronkscales1
++~Thanks for the advice. I will check their offer and maybe come back if it's not worth it.~ + Tronkscales3

CHAIN
IF ~~ THEN Stotronk Tronkscales2
~Fine, watch out, this is nothing one learns during the apprenticeship...~ DO~StartCutSceneMode()MoveViewObject("Stotronk",5) Wait(1) CreateVisualEffectObject("spcrtwpn","Stotronk") Wait(6) EndCutSceneMode() ActionOverride("Stotronk",Dialogue([PC]))~EXIT

CHAIN
IF ~~ THEN Stotronk Tronkscales3
~I've no plans to shut down my business any time soon. Come back whenever you like.~EXIT
