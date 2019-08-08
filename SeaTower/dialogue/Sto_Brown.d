CHAIN
IF~Global("Sto_Dragon","Global",0) ~ THEN Stoflund TalkBrown1
~I heard her again last night, believe me. She is calling us!~
DO~SetGlobal("Sto_Dragon","Global",1)~
END
++~Get lost, fisherman, you're drunk, you hear voices already.~ + TalkBrown2
++~Who is calling, Umberlee?~ + TalkBrown2
++~What do you hear, beware it might be a sirene trying to charm you.~ + TalkBrown2

CHAIN
IF~~ THEN Stoflund TalkBrown2
~Hey, I'm not telling you any tales, <PRO_MANWOMAN>. You look like adventurers the way you're geared up. You must have heard stranger tales than I tell you now and maybe faced stronger challenges.~
=~SHE isn't fiction, she's real.~
=~I'm talking about a dragon, you hear me?~
END
++~A dragon in a dungeon below an old castle? Have I heard such a thing before?~+ TalkBrown3
++~Now you got me interested, fisher man.~ + TalkBrown3
++~Tell your tale and try to stick to facts.~ + TalkBrown3
++~Yawn, I'm not even listening anymore.~ + TalkBrown3

CHAIN
IF~~ THEN Stoflund TalkBrown3
~On your journeys you might have heard of skull dragons, some call them black dragons as well.~
==BDCorwiJ IF~InParty("Corwin")~THEN~There were some reports about one having been spotted at the mouth of River Chionthar a few tendays ago, <CHARNAME>, there may be truth in this man's words.~
==Stoflund IF~!InParty("CVSandr")~THEN~These dragons are aquatic creatures that live in sea and swamps and they feed on fish, shellfish and a tad of red meat from terrestrial creatures. And there was one at the mouth of River Chionthar a while ago.~
END
++~Be that as it may, what does it have to do with us?~ + TalkBrown4
++~Why does that interest you at all?~ + TalkBrown4

CHAIN
IF~~ THEN Stoflund TalkBrown4
~Maybe she got chased out her swamp by a rival female that took here mate, but she came here and must have nested in the flooded parts of the lower tower dungeons. But with those strange recent activities that disturb the caves and cellars something must have cut off her exits.~
=~She's probably trapped down there. That's why I hear her trying to call me with some magic.~
END
++~A trapped black dragon may not be dangerous but lucrative to kill.~ + TalkBrown5
++~Those are powerful beings and not dumb. Maybe we can make a deal with her for whatever she can give us for her freedom.~ + TalkBrown5
++~Let her stay there, we have more urgent things to do.~ + TalkBrown5

CHAIN
IF~~ THEN Stoflund TalkBrown5
~Deal with it as you like, <PRO_SIRMAAM>, I'd prefer some peaceful end. I can live with her and what share she takes from the fish and shells just like me. I can't live with her moaning and knowing she suffers.~
=~I'll be at my house over there in the east outside the tower walls.~
DO~AddJournalEntry(@1008,QUEST) Wait(1) MoveToPointNoInterrupt([4473.2148])~ EXIT

CHAIN
IF~Global("StoDragonspell","Global",0)~THEN Stodrago NotWelc1
~It is time you came, however-you-call-yourself.~
DO~SetGlobal("StoDragonspell","Global",1)~
END
++~My name is <CHARNAME>, a pleasure to meet a wise ancient creature like you.~+ NotWelc2
IF~Global("Sto_Dragon","Global",1)~THEN REPLY~My name is <CHARNAME>. I heard of you outside and learned you may be in some trouble.~+ NotWelc2
IF~Global("Sto_Dragon","Global",1)~THEN REPLY~My name is not important and you are in no condition to make demands. I heard of you outside and know you are in some trouble.~ + NotWelc3
++~It seems you can't await your own death, wyrm.~+ NotWelc3

CHAIN
IF~~THEN Stodrago NotWelc3
~Hold your tongue! In another time, you would have encountered my tooth and claw instead of words! But...you're right, I require outside help.~ EXTERN Stodrago NotWelc4

CHAIN
IF~~THEN Stodrago NotWelc2
~I'm sure you do, but flattery is not why I allow you to talk to me. I require outside help.~ EXTERN Stodrago NotWelc4

CHAIN
IF~~THEN Stodrago NotWelc4
~I demand your service and it will not be your loss to listen carefully. I am Ueurwen, the Black, the reason why I dwell down here is not your concern.~
=~The recent diggings by slaves of those brain eaters in the caves around have blocked my passage to the sea outside. It is not urgent for me to leave, there is food here enough but it's very unpleasant to be caught against MY will.~
END
++~What is there I could possibly do about that?~ + NotWelc5
++~I can't dig a passage for a dragon to pass through and our magic has no means for it either.~ + NotWelc5
++~You need not worry to get out. This will be your grave.~DO~EraseJournalEntry(@1008) ENEMY()~EXIT

CHAIN
IF~~THEN Stodrago NotWelc5
~Silence! I will tell you when you may speak. This is a VERY important matter, and I will not be interrupted, bah, adventurers. You stumble blindly through these dungeons and know not the basics.~
=~Use magic. We need teleportation. Outside is a city, you - even you - should be able to find some teleportation scroll out there.~
END
++~I may do so but my service will not be for free.~ + NotWelc6
++~Impertinent as you are I may still do what you request - for a price.~ + NotWelc6
++~Enough of your insolence, I will do nothing for you. Find yourself another fool.~EXIT
++~Wyrm, I don't need to do your errands to grab your treasures.~ + NotWelc6

CHAIN
IF~~THEN Stodrago NotWelc6
~See, adventurer, the treasure is with my eggs that are protected by acid. Try to steal it and die. Only I can give it to you. I give you some scales as well, a learned smith could do wonders with them. Attack me and all you wil find is death.~
END
++~We will come back with a scroll and you hold your word.~DO~AddJournalEntry(@1015,QUEST)~+ NotWelc7
++~Enough of your insolence, I will do nothing for you. Find yourself another fool.~EXIT
++~We have a deal, Ueurwen. I'll be back.~ DO~AddJournalEntry(@1015,QUEST)~+ NotWelc7
++~Your kin is known for deceit, I have no reason to trust you, but I'll take your scales and your treasure by force.~DO~EraseJournalEntry(@1008) ENEMY()~EXIT

CHAIN
IF~~THEN Stodrago NotWelc7
~You're less dumb than I anticipated. Take this as a sign of our deal.~DO~GiveItemCreate("misc44",Player1,0,0,0)~EXIT

CHAIN
IF~Global("StoDragonspell","Global",1) GlobalLT("Sto_Dragon","Global",2)PartyHasItem("Scrl6q")~THEN Stodrago TooWeak1
~I can see by that self-confident expression you wear that you found a solution?~
DO~SetGlobal("Sto_Dragon","Global",2)~
END
++~Fulfil your part of the bargain and I give you the scroll.~ +TooWeak2
++~Your kin is known for deceit, I have no reason to trust you, but I'll take your scales and your treasure by force.~DO~EraseJournalEntry(@1008) ENEMY()~EXIT

CHAIN
IF~~THEN Stodrago TooWeak2
~You will find everything that I promised you here in my lair when I'm gone. Take what you want from it.~DO~SetGlobal("StoFailed","sto205",1) TakePartyItem("Scrl6q") Wait(1) CreateVisualEffectObject("SPSump",Myself)~EXIT

CHAIN
IF~Global("StoFailed","sto205",1)~THEN Stodrago TooWeak3
~WHAT?~
DO~SetGlobal("StoFailed","sto205",2)~
=~I'm still here! There was a slight pull but far too weak. Where did you get this scroll, at Lucky Aello's Discount Store?~
END
++~This was from a renowned temple. Maybe you are simply too...fat...~DO~AddJournalEntry(@1016,QUEST)~+ TooWeak4
++~There was nothing wrong with the scroll. It may just not be powerful enough for a mighty creature like you.~ DO~AddJournalEntry(@1016,QUEST)~+ TooWeak4
++~Enough of this now. I will do nothing anymore for you. Find yourself another fool.~EXIT
++~Enough! I'll take your scales and your treasure by force.~DO~EraseJournalEntry(@1008) EraseJournalEntry(@1015) ENEMY()~EXIT

CHAIN
IF~~THEN Stodrago TooWeak4
~(Purr) You can do better, adventurer. There's a large city out there full of resources. One like you should be able to find a more powerful artefact that can suit OUR purpose.~EXIT

CHAIN
IF~Global("StoDragonspell","Global",3) PartyHasItem("StoTele")~THEN Stodrago RightOne1
~Ha, I knew you had it in you, puny adventurer whose name I forgot. I'm a brilliant motivator after all.~
=~May the journey begin!~
END
++~This scroll should take you to a cave somewhere else on the Sword Coast once used by some pirates...~ + RightOne2
++~This was a very costly adventure for me...~ + RightOne2
++~And I knew you would betray me, wyrm...~ + RightOne2

CHAIN
IF~~THEN Stodrago RightOne2
~This cave and everything in it is yours, <CHARNAME> - yes I know how you call yourself.~
DO~SetGlobal("StoDragonspell","Global",4) TakePartyItem("StoTele")~
=~Like Tiamat always used to say: Hasta la Vista, baby.~DO~ClearAllActions() Wait(1)StartCutSceneMode() StartCutScene("Stocut3")~ EXIT