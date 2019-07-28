BEGIN Stomage1
BEGIN StoBill

CHAIN
IF WEIGHT #-8~Global("ScarMission","GLOBAL",5) Global("STO_ScarDoppel","Global",0)~THEN Scar Start1
~Hello, <CHARNAME>. I had time to do some inquiries about all those doppelgangers we seem to encounter these days.~
DO~SetGlobal("STO_ScarDoppel","Global",1)~
END
++~They always appear in relation to Iron Throne machinations.~ + Start2
++~Go on, Scar.~ + Start2
++~I hope this will not lead us too far astray from our main task.~ + Start2

CHAIN
IF~~THEN Scar Start2
~I can't yet put my fingers on it but it would be more than sheer coincidence if their appearances have nothing to do with our other problems.~
=~Here are some details me and those loyal to me have come across lately. There is some increase in activities between the old Sea Tower of Balduran, the hero of this town, and the Iron Throne building. Especially at night. Some of my men swear they have seen people that should have been elsewhere at that time.~
END
++~Doppelgangers?~ + Start3
IF~GlobalGT("StoGotPass","GLOBAL",0)~THEN REPLY~I know where that tower is.~ + Start3
IF~Global("StoGotPass","GLOBAL",0)~THEN REPLY~Where is that tower, I missed it so far?~ + Start3
++~No more errands, Scar. I want to see your superiors now.~ + NoStart

CHAIN
IF~~THEN Scar NoStart
~(Sigh) I hope this neglection of open issues will not cause trouble in the future.~
=~Anyway, you have done much for our town already and I'm thankful for it. Come back in an hour and I will make arrangements meanwhile.~EXIT

CHAIN
IF~~THEN Scar Start3
~Balduran's Sea Tower is off limits for the public. You need a pass from the Dukes to be admitted. Several Iron Throne members are influential enough to have such passes. I still hope that I'm wrong but it's better to have someone not known as Flaming Fist to look into whatever goes on there.~
END
++~I have such a pass already from another mission.~ + Start4
++~No more errands, Scar. I want to see your superiors now.~ + NoStart
++~Where would I get such a pass, do I get to see the Dukes now?~  + Start5

CHAIN
IF~~THEN Scar Start4
~(Raises an eyebrow.) You're quite resourceful, <CHARNAME>, but maybe that's what is needed in this case. Good luck with your investigation. You will find me here in case you find or don't find anything.~DO~SetGlobal("STO_ScarDoppel","Global",2) AddJournalEntry(@1004,QUEST)~EXIT

CHAIN
IF~~THEN Scar Start5
~I have such a pass for you, <CHARNAME>. You just need to show it at the gate to the tower. You'll find the entrance in the south west of the Water Queen's House in the harbour. Just follow the catwalk beside the city wall.~DO~SetGlobal("STO_ScarDoppel","Global",2) GiveItemCreate("stopass",Player1,0,0,0) AddJournalEntry(@1004,QUEST)~EXIT

CHAIN
IF~Global("Arealook","Sto102",1)~THEN Stomage1 Secret1
~You are not supposed to be down here and I assume you know it.~
END
++~We have a pass from the Dukes, so stand aside.~+ Secret2
IF~Global("STO_ScarDoppel","Global",2)~THEN REPLY~Scar and Duke Eltan are very interested in what is going on here.~+ Secret3
++~Ah, it's "here" that we're not supposed to enter. Sorry, I'm leaving already.~+ Secret2
++~Let's make this short, you stand in our way and we will remove you, nothing personal, you know.~DO~SetGlobal("STO_ScarDoppel","Global",12)~+ Secret4

CHAIN
IF~~THEN Stomage1 Secret2
~Everyone in this area has a pass. And everyone who has a pass knows the rules. Now get out.~EXIT

CHAIN
IF~~THEN Stomage1 Secret4
~You get what you ask for, fool.~DO~AddJournalEntry(@1005,QUEST_DONE) Enemy()~EXIT

CHAIN
IF~~THEN Stomage1 Secret3
~Scar and Eltan...they were not supposed to - what went wrong?~
DO~SetGlobal("Arealook","Sto102",2)~
END
++~You will not hold us up, man. Get out of the way while you still can.~ + Secret5
++~Let's make this short, you stand in our way and we will remove you, nothing personal, you know.~+ Secret5
++~Who is it you are really working for? Speak and you may live - maybe.~ + Secret5

CHAIN
IF~~THEN Stomage1 Secret5
~It makes no sense to die down here for Sarevok. If Scar's still alive and knows about the Sea Tower he'll send more to investigate even if I could kill you.~
DO~AddJournalEntry(@1006,QUEST)~
=~Do what you want but be warned, your death waits for you if you move on.~DO~EscapeAreaDestroy(20)~EXIT

CHAIN
IF~AreaCheck("Sto103")~ THEN StoScar Trap103
~Is that how you do your duties, traitor. You come too late, much too late!~
DO~AddJournalEntry(@1007,QUEST) Wait(1) ApplySpell(Myself,DOPPLEGANGER_CHANGE4)~ EXIT

CHAIN
IF~AreaCheck("Sto201")~THEN StoBill Invite1
~Greetings, peasants, well then, I'll need to see your invitations.~
END
++~Invitations to what?~ + Invite2
++~I have the Duke's pass here.~ + Invite2

CHAIN
IF~~THEN StoBill Invite2
~Don't be so impatient! Let's take a look at these invitations. Invitations! Sssss...~DO~ApplySpell(Myself,DOPPLEGANGER_CHANGE4)~ EXIT