BEGIN Stodrago

EXTEND_TOP Halbaz 0 #1
IF ~Global("StoDragonspell","Global",2)~THEN REPLY ~This may sound unusual but we need a transportation spell that can move a dragon.~+ Stospell1
IF~PartyHasItem("Stoeggs")~THEN REPLY~Can you use these dragon eggs for a purpose?~ + Haleggs1
END

CHAIN
IF ~~ THEN Halbaz Haleggs1
~Dragon eggs? What could I probably do with them?.~
=~Maybe a cook in the Ducal Palace can use them to make scrambled eggs for all.~EXIT

CHAIN
IF~~THEN Halbaz Stospell1
~It may sound unusual but you've come to a place where the unusual is...eh...not so unusual.~
=~You have a teleportation scroll that we can use to make it stronger?~
END
IF~PartyHasItem("Scrl6q")~THEN REPLY~We have one but it does not suit our pupose.~ + Stospell1a
IF~!PartyHasItem("Scrl6q")~THEN REPLY~No, do you have none yourself?~+ Stospell1b

CHAIN
IF~~THEN Halbaz Stospell1b
~Most of the time I would have them but there was little demand recently, so the scribes were tasked with more popular scrolls. Unless you want to wait a tenday or more, you should try some temples that may have one for you.~EXIT

CHAIN
IF~~THEN Halbaz Stospell1a
~Great, hold on to it, it is our main ingredient. You still need the other components, which are two diamonds and the skull of a pirate.~
END
++~The skull of a pirate, that is even odder than anything else I heard about?~+ Stospell1c
++~Two diamonds? Are they to fill your purse?~ + Stospell1c
IF~NumItemsPartyGT("Misc42",1) !PartyHasItem("Stoskul")~THEN REPLY~I have the diamonds but no such weird thing as a pirate's skull.~ + Stospell1c
IF~NumItemsPartyLT("Misc42",2) PartyHasItem("Stoskul")~THEN REPLY~I have such a skull, adventures have such items at hand. I need to find some diamonds still.~  + Stospell1c
IF~NumItemsPartyGT("Misc42",1) PartyHasItem("Stoskul")~THEN REPLY~I seem to have everything you require.~+ Stospell2

CHAIN
IF~~THEN Halbaz Stospell1c
~The basics of scroll enhancements in a nutshell for you: the diamonds are used for binding the target of the teleportation onto the scroll. As we want to move a dragon the target should be a cave. A pirate is a sure subject to have seen one or other unused cave in his life and that information we can extract from his skull. Simple logic, my friend.~EXIT

CHAIN
IF~~THEN Halbaz Stospell2
~Ha, I love such challenges! Now...stand back a bit, this will smell funny, binding half rotten skulls is nothing for finer noses...~DO~SetGlobal("StoDragonspell","Global",3) ClearAllActions() Wait(1)StartCutSceneMode() StartCutScene("Stocut2")~ EXIT

EXTEND_TOP MCook4 0 #0
IF ~PartyHasItem("Stoeggs")~THEN REPLY ~Do you have use for this excellent fresh egg, maestro?~ + eggs1
END

CHAIN
IF~~THEN MCook4  eggs1
~Impressive, it's BIG. I could feed the whole guard with one of them. You're a nice chap, I give you 5GP for it.~
END
++~You must be joking, this is a dragon egg. I had to kill a dragon to get it, it's worth a fortune.~+ eggs2
++~Better than nothing, I guess. You have a deal.~+ eggs3
++~Forget it. I'll find another buyer.~+ eggs4

CHAIN
IF~~THEN MCook4  eggs2
~Adventures are fools is what I say. My budget for a meal is 5GP and that's already 5GP more than those guards are worth.~EXIT

CHAIN
IF~~THEN MCook4  eggs3
~Get gone quick. I feel already I made a mistake...~DO~GivePartyGold(5) TakePartyItem("Stoeggs")~EXIT

CHAIN
IF~~THEN MCook4  eggs4
~I'm sure you will. The world is full of fools and the one to buy that junk is already born.~EXIT