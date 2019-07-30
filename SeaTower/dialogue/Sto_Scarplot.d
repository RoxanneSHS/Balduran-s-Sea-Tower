BEGIN Stomage1
BEGIN StoBill
BEGIN StoLiia
BEGIN StoWinsk

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
IF WEIGHT #-8~Global("ScarMission","GLOBAL",5) Global("STO_ScarDoppel","Global",8)~THEN Scar Result1
~You're back, <CHARNAME>. Did you find out something at the Sea Tower?~
DO~SetGlobal("STO_ScarDoppel","Global",9)~
END
++~We found evidence that the doppelgangers came from there. An Othlor named Winski headed the operation on behalf of Sarevok.~+ Result2
++~We closed down the supply of doppelgangers but the guy who was in charge, the mage Winski, could escape.~ + Result2

CHAIN
IF~~ THEN Scar Result2
~Winski Perorate, I should have known! That is a direct link to Sarevok and bad news in deed.~
=~Winski is an expatriate of Rashemen, a mage said to know all dark and evil magic you can think of. I have long already auspected him to train and condition Sarevok to be used as a weapon of revenge against the witches who drove him from his home land.~
END
++~I gained the impression that such might have been Winski's original plan but Sarevok meanwhile is using the Othlor to do his bidding.~ + Result3
++~He's a loser twice. We stopped his doppelganger project and Sarevok has long overpowered his former tutor.~ + Result3

CHAIN
IF~~ THEN Scar Result3
~I hope your success gives us the time we need to act and prepare, <CHARNAME>.~
DO~AddexperienceParty(9000)~
END
++~There is one thing you need to know, there was a doppelganger of yourself that we had to eliminate.~ + Result4
++~One more detail, Scar, that Winski claimed that we came too late. Maybe he has educated enough of the shapeshifters to fulfil his needs.~ + Result5
++~I freed Duke Jannath before a clone of her was ready to replace her.~ + Result5

CHAIN
IF~~ THEN Scar Result5
~I heard what Liia had to say after her rescue and that there even was a double of me. There may be others already in high position that we don't know about yet.~
EXTERN Scar Result7

CHAIN
IF~~ THEN Scar Result4
~This is quite alarming. Add to this what Duke Liia Jannath told me about her rescue.~
EXTERN Scar Result7

CHAIN
IF~~ THEN Scar Result7
~Anyway, you have done much for our town already and I'm thankful for it. There are preparations to be made but you have solved at least the problem at the Sea Tower. Come back in an hour and I will make arrangements meanwhile to have you meet Duke Eltan.~DO~EraseJournalEntry(@1004) EraseJournalEntry(@1005) EraseJournalEntry(@1006) EraseJournalEntry(@1007) EraseJournalEntry(@1009) EraseJournalEntry(@1010)~  EXIT

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
=~Do what you want but be warned, your death waits for you if you move on.~DO~		MoveToPointNoInterrupt([600.502]) EscapeAreaDestroy(20)~EXIT

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

CHAIN
IF~Global("STO_ScarDoppel","Global",6)~THEN StoWinsk Again1
~All that disturbance outside, that was you. Again.~
DO~SetGlobal("STO_ScarDoppel","Global",7)~
==Stowinsk IF~GlobalLT("X#DYJWADM","GLOBAL",2) GlobalLT("SanOrDiId","GLOBAL",5)~THEN~ This is just one time too many that you cross our schemes - <CHARNAME>. Yes, I know who you are.~
==Stowinsk IF~OR(2)GlobalGT("X#DYJWADM","GLOBAL",1)GlobalGT("SanOrDiId","GLOBAL",4)~THEN~So we meet again, <CHARNAME>. This is just one time too many that you cross our schemes.~
END
++~I was expecting someone else here, Othlor, the bhaalspawn Sarevok. What is your role in this.?~+ Again2
++~I crossed the schemes of the Iron Throne and Sarevok a number of times and do it here once again.~+ Again2
IF~OR(2)GlobalGT("X#DYJWADM","GLOBAL",1)GlobalGT("SanOrDiId","GLOBAL",4)~THEN REPLY~Winski Perorate, I was expecting to see you again under unpleasant circumstances.~+ Again2

CHAIN
IF~~THEN StoWinsk Again2
~What is my role? I am Sarevok's mentor and tutored him in the blackest of rituals. Why do I reveal this to you? Because you will not leave here to tell anyone. You will not stop the rising god of murder.~
DO~AddJournalEntry(@1010,QUEST)~
==Stowinsk IF~InParty("Dynaheir")~THEN~So, you have come for me, witch.~
==DynahJ IF~InParty("Dynaheir")~THEN~I did not come for thee, Winski Perorate. I came from Rashemen to find the Bhaalspawn Sarevok of whom I heard in Sembia... And of late my labor has become helping <CHARNAME> to stop Sarevok Anchev's war. Thou hast never been my task.~
==Stowinsk IF~InParty("Dynaheir")~THEN~Do not lie! The Othlors... the Hathrans... they were looking for me ever since I... fled Rashemen. They did not think much of me to send one puny Wychlaran. Rashemen may have driven me into the shadows, but I will have my revenge.~
==DynahJ IF~InParty("Dynaheir")~THEN~Dost not threaten us, Winski. No good will come out of it.~
END
++~These doppelgangers are under your control?~ + Again3
++~You don't stop at an alliance with doppelgangers, you even work with mind flayers!~ + Again3

CHAIN
IF~~THEN StoWinsk Again3
~Sarevok needs me, he may have forgotten it now that his powers have grown. But he is nothing without me. These doppelgangers lack own initiative and focus but follow the lead of a powerful mage who knows how to handle them.~
=~You're just a fool and you come too late. You maybe can close down this installation but the damage is already unreversibly done. I will not waste more time with you.~
=~*Snaps his fingers*.~
=~Here, creatures, kill that fool for your master.~ DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT