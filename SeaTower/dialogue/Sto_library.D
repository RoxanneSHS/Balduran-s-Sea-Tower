BEGIN STOGRD2
BEGIN STOGRD3

CHAIN
IF~Global("Sto_ConvincedChart","Global",2)~THEN Stogrd3 Hunger11
~You again?~
END
++~They are waiting at the dining hall for you, food's ready. They are quite angry that you're late already.~ + Hunger12
++~Nevermind.~EXIT

CHAIN
IF~Global("Sto_ConvincedChart","Global",2)~THEN Stogrd2 Hunger13
~You again?~
END
++~They are waiting at the dining hall for you, food's ready. They are quite angry that you're late already.~ EXTERN Stogrd3 Hunger12
++~Nevermind.~EXIT

CHAIN
IF~Global("Sto_ConvincedChart","Global",0)~THEN Stogrd3 Hunger1
~You can look but you better not touch!~
DO~SetGlobal("Sto_ConvincedChart","Global",1)~
==Stogrd2~Those are Balduran's Sea Charts, most precious artefact 'round here.~
END
++~I have authority to use them, from the dukes, see my document here.~ + Hunger3
++~Balduran's sea charts, interesting...~ + Hunger3
++~And that's why they need two guards to protect them?~ + Hunger3

CHAIN
IF~Global("Sto_ConvincedChart","Global",0)~THEN Stogrd2 Hunger2
~You can look but you better not touch!~
DO~SetGlobal("Sto_ConvincedChart","Global",1)~
==Stogrd3~Those are Balduran's Sea Charts, most precious artefact 'round here.~
END
++~I have authority to use them, from the dukes, see my document here.~EXTERN  Stogrd3 Hunger3
++~Balduran's sea charts, interesting...~EXTERN  Stogrd3  Hunger3
++~And that's why they need two guards to protect them?~EXTERN  Stogrd3 Hunger3

CHAIN
IF~~THEN Stogrd3 Hunger3
~They are off limits for everyone, only them Dukes themself may touch 'em.~
==Stogrd2~D'ya get that smell, Leroil? Wonder what they're cooking up for us today over in the kitchen.~
==Stogrd3~I could digest a whole hog, time to get something to eat soon.~
END
++~I'll go check that out for you, don't worry.~ + Hunger4
++~See you later.~ + Hunger4
++~I'm hungry too, now that you mention it.~ + Hunger4

CHAIN
IF~Global("Sto_ConvincedChart","Global",1)~THEN Stogrd3 Hunger4
~Get lost already.~EXIT

CHAIN
IF~Global("Sto_ConvincedChart","Global",1)~THEN Stogrd2 Hunger5
~Get lost already.~EXIT

CHAIN
IF~~THEN Stogrd3 Hunger12
~It's high time, you hear that?~
==Stogrd2~Best news of the day.~DO~SetGlobal("Sto_ConvincedChart","Global",3)~EXIT

CHAIN
IF WEIGHT #-2~Global("Sto_ConvincedChart","Global",1)~THEN FeCook  Hunger6   
~Ya, I don't like no snot-nosed brats causin' trouble here. You better scram, 'fore I give you a whippin'.~
END
++~There are two mighty hungry guards outside, lady.~ + Hunger7
++~When will the meal be ready?~ + Hunger7
++~Nevermind~EXIT

CHAIN
IF~~THEN FeCook  Hunger7
~WHAT! I deliver'd evr'thin' to that gullyhead in the dinin' hall. Talk to that brat and get outa here.~DO~SetGlobal("CookSent","Sto101",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("Sto_ConvincedChart","Global",1)Global("CookSent","Sto101",1)~THEN FCook2  Hunger8
~Foods gettin' cold and old if them bunch of greenheaded guards not show up soon!~
END
++~Not my business, fool~ + Hunger9
++~Wait a minute, I'll tell them supper's ready.~DO~SetGlobal("Sto_ConvincedChart","Global",2)~ + Hunger10
++~More for all of us, what do you say?~+ Hunger9

CHAIN
IF~~ THEN FCook2  Hunger9
~Get out or be thrown out!~EXIT

CHAIN
IF~~ THEN FCook2  Hunger10
~You do that.~ EXIT