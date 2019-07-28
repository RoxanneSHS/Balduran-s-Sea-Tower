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
=~I', talking about a dragon, you hear me?~
END
++~A dragon in a dungeon below an old castle? Have I heard such a thing before?~+ TalkBrown3
++~Now you got me interested, fisher man.~ + TalkBrown3
++~Tell your tale and try to stick to facts.~ + TalkBrown3
++~Yawn, I'm not even listening anymore.~ + TalkBrown3

CHAIN
IF~~ THEN Stoflund TalkBrown3
~On your journeys you might have heard of skull dragons, some call them black dragons as well.~
==BDCorwiJ IF~InParty("Corwin")~THEN~There were some reports about one having been spotted at the mouth of River Chionthar a few tendays ago, <CHARNAME>, there may be truth in this man's words.~
==Stoflund~These dragons are aquatic creatures that live in sea and swamps and they feed on fish, shellfish and a tad of red meat from terrestrial creatures. And there was one at the mouth of River Chionthar a while ago.~
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
~Deal with it as you like, <PRO_SIRMAAM>, I'd prefer some peaceful end. I can live with her and she share she takes from the fish and shells just like me. I can't live with her moaning and knowing she suffers.~
=~I'll be at my house over there in the east outside the tower walls.~
DO~AddJournalEntry(@1008,QUEST) Wait(1) MoveToPointNoInterrupt([4473.2148])~ EXIT