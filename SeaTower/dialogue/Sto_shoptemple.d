CHAIN
IF~GlobalLT("STO_ScarDoppel","Global",3)~THEN Stohelm HeSuspicion1
~Welcome to the Watchful Shield. Our devotion to He of the Unsleeping Eye is unswerving. Anyone who regularly entered by the gate is a welcome sight these days.~
END
++~Sorry, the thought of being watched by some kind of ceaseless eye disturbs me immensely. I'll find my own way out.~ + HeSuspicion2
IF~Global("SaidStrange","Locals",0)~THEN REPLY~This sounds to me like the Unsleeping Eye sees disturbing things around the tower?~ + HeSuspicion2
++~I'd like to see what services you have to provide.~DO ~StartStore("tem0002",LastTalkedToBy(Myself))
~ EXIT

CHAIN
IF ~  True() ~ THEN Stohelm Routine
~Welcome to the Watchful Shield. Our devotion to He of the Unsleeping Eye is unswerving. Please, allow us to shield and protect you under the ceaseless gaze of Helm.~
END
++~Sorry, the thought of being watched by some kind of ceaseless eye disturbs me immensely. I'll find my own way out.~ EXIT
++~I'd like to see what services you have to provide.~DO ~StartStore("tem0002",LastTalkedToBy(Myself)) ~ EXIT

CHAIN
IF~~THEN Stohelm HeSuspicion2
~There are unhealthy things going on in the Sea Tower, especially at night. When I go outside to smoke my last pipe I see people leaving I never saw before and I never saw them coming.~
DO~SetGlobal("SaidStrange","Locals",1)~
=~This is a secluded area with strict control by the Sea Watch. Everybody knows everybody else and visitors with a Duke's pass are a rare thing. Who would come from the library after dark when it's closed?~
END
++~Interesting, we will keep our eyes open while we are here. We will leave with the faces we have right now.~EXIT
++~Interesting, I'd like to see what services you have to provide.~DO ~StartStore("tem0002",LastTalkedToBy(Myself)) ~ EXIT

CHAIN
IF ~  True() ~ THEN Stoselu RoutineSel
~Welcome wanderer and seekers, may Our Lady of Silver light your way. Is any of you a follower of the Moon Maiden?~
END
IF~InParty("Rasaad")~THEN REPLY~Rassaad yn Bashir here is a sun soul monk. We'd like to see what services you have to provide.~DO ~StartStore("olselune",LastTalkedToBy(Myself)) ~ EXIT
++~Sorry, no but I've always loved to listen to the stories of the night white lady and the man in the moon and such.~ EXIT
IF~!InParty("Rasaad")~THEN REPLY~No, but we're questers and seekers and may have use for what services you have to provide.~DO ~StartStore("olselune",LastTalkedToBy(Myself)) ~ EXIT



