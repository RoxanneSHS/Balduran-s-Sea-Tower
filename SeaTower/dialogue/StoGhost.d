BEGIN StoGhost

CHAIN
IF~Global("BePirate","Locals",3) ~THEN Stoghost FinalRest1
~Before you go, there is a final task I would ask from you, for mercy's sake.~
=~My reason to stay in the ghostly state was to tell someone my tale and make known what nature of hero Balduran had been. My time is long over and I deserve to rest. Do me this final favour and release me to my end. Fight me to death.~
END
IF~Global("StoDragonspell","Global",2)~THEN REPLY~Great, I need your skull for some other purpose anyway. Give us a good fight, Koltock.~DO~Enemy()~EXIT
++~If this is your wish, pirate. Give us a good fight, Koltock.~DO~Enemy()~EXIT
++~You think you deserve our mercy? No, stay what you are, I don't care.~DO~Enemy()~EXIT

CHAIN
IF~GlobalGT("StoGhostHead","Global",1) PartyHasItem("Stoskul")~THEN Stoghost Head1
~(The ghost points enthusiastically at the place where his head should be.)~
END
++~Ha, we have learned a bit about you, pirate. Or would you deny that you were one in life?~ + Head2
++~We will not be able to find out anything before you can talk again.~ + Head2
++~I refuse to have anything to do with a beast like you.~ + Head2

CHAIN
IF~~THEN Stoghost Head2
~(The ghost's gestures get frantic. Maybe it would be a good idea to hear his version of the story from his own mouth.)~
END
++~Here take your skull that you may speak again.~DO~SetGlobal("BePirate","Locals",1)TakePartyItem("Stoskul")~EXIT
++~I warn you, if you use your head to tell us lies then you will lose it again with one strike of our swords.~DO~SetGlobal("BePirate","Locals",1)TakePartyItem("Stoskul")~EXIT
++~I will lay you to eternal rest for what you did in life, pirate.~DO~ActionOverride(Player1,Attack("stoghost")) Enemy()~EXIT

CHAIN
IF~Global("BePirate","Locals",2)~THEN Stoghost Head3
~Ah, my memories and my voice, you did well, stranger, you may get your reward for you get now the chance to correct an old wrongdoing.~
DO~SetGlobal("BePirate","Locals",3)~
=~I am...I was Koltock, first mate of Balduran on the Wandering Eye for all but his final voyages - and yes, I was a pirate. Just like Balduran was and most anyone who sailed with him.~
END
++~That sounds like the beginning of an interesting story, go on.~ + Head4
++~Little is known about Balduran other than that he founded the town outside and is considered to be a hero of some reputation.~ + Head4
++~When I sense that you try to fool me. you will lose your head a second time.~ + Head4

CHAIN
IF~~THEN Stoghost Head4
~I was born on one of the isles of Nelanther. Every male who grows to age there goes to the sea to find fame and fortune and so did I, it was the ways of our folk and only later I learned that others regarded us as a plague and marked us as pirates and criminals in their eyes.~
=~Balduran was a well known adventurer on the Sword Coast and when he decided to explore new lands and go across the Sea of Swords, he made a call for the best of seamen and adventurers and many heeded his call. Balduran was scrupelous in his methods when it came to reaching his goals and he did not care about anyone's past as long as the man was loyal and effective.~
=~Many of his men were Nelanther pirates or mercenairies with a bloody reputation and many of Balduran's acts were piracy. The treasures he brought back from Anchorome were gathered there with sword and fire. The Cursed Lord of Anchorome finally set out to eliminate us and rid us of his land, killing more than a hundred of our comrades before we could escape back to Faerun.~
END
++~Balduran wasn't the hero we see in him, is that what you're trying to say? ~ + Head5
++~Are you trying to discredit a well-respected city founder to justify your misdeeds?~ + Head5

CHAIN
IF~~THEN Stoghost Head5
~Nay, I'm not trying to judge Balduran for his deeds. He was a conqueror and explorer, just like a Nelanther islander can wish to have as a captain. You don't survive or get respected in that occupation by bringing flowers and helping old ladies across the road. You fight, you kill, you loot, and you celebrate your victories with rum and women.~
=~There's no difference between a pirate and a conquistador and Balduran himself wouldn't make such. Until...until he came home to the misrable village that was his hometown with his pockets full of wealth and realised he had more than he could spend within a lifetime.~
=~He invested much of this wealth into fortifying the town's walls and Gray Harbor began to prosper. He was liked and respected - the town was renamed to Baldur's Gate to hail him. Somehow he became afraid that his former comrades were no longer adequate for a leader like he wanted to be. Many retired and settled with him to become merchants and citizens.~
END
++~Not you, I guess?~ + Head6
++~You should have done the same.~ + Head6
++~Many but not all?~ + Head6
++~I feel like I'm a bit of the same sort.~ + Head6

CHAIN
IF~~THEN Stoghost Head6
~A wolf doesn't become shepherd over night. A man from the Nelanther won't become merchant or farmer. Even Balduran wasn't made to become the "city father" he wanted to be. But he tried and he tried it by removing what was the evidence of his "old" ways.~
=~It was easy to adopt the law and declare his former mate and crew to be pirates. The name alone was justification to enforce the law. It came in handy that by getting rid of us, he got rid of those who had helped to hide much of the gold and jewels that made up his treaure in some of the many caves along the Sword Coast cliffs known as the Sword's Teeth.~
END
++~So he killed his old mate?~+ Head7
++~This is how you ended here.~+ Head7

CHAIN
IF~~THEN Stoghost Head7
~Twenty so-called pirates were executed at the Sea Tower that was build as part of Balduran's fortification, call it a sacrifice to the new age of former Gray Harbor to turn it into Baldur's Gate.~
DO~EraseJournalEntry(@1011)  EraseJournalEntry(@1012) EraseJournalEntry(@1013)~
=~All of them are dust and forgotten except for me. Maybe I am still here so that the story is not lost, I don't know.~
END
++~What happened to the treasure of Balduran?~ + Head9
++~What happened during Balduran's last journey?~ + Head8
++~Your tale will not be forgotten, Koltock.~ + Head10

CHAIN
IF~~THEN Stoghost Head8
~I have no way of knowing, I was dead already at the time as you learned by now. That part of history may be found elsewhere.~DO~RandomWalk()~EXIT

CHAIN
IF~~THEN Stoghost Head9
~Lost and found by others. Black Alaric knew of some and he escaped. Down here treasure seekers appeared over time. Take this item I have secured, it may help you on your further journeys.~DO~GiveItemCreate("stoamuB",Player1,0,0,0) RandomWalk()~EXIT

CHAIN
IF~~THEN Stoghost Head10
~It is good to know that history is not lost. Take this item I have secured, it may help you on your further journeys.~DO~GiveItemCreate("stoamuB",Player1,0,0,0) RandomWalk()~EXIT

CHAIN
IF~NumTimesTalkedTo(0)GlobalLT("StoGhostHead","Global",1)~THEN Stoghost Want1
~(The ghost points at the empty treasure chest next to him.)~
END
++~No head, no gold, no rest. Poor creature, you've seen better days for sure.~EXIT
++~If you had a head you'd probably be able to tell me your story.~EXIT
++~I may just put you out of your misery, but you're dead already.~EXIT

CHAIN
IF~NumTimesTalkedTo(1)GlobalLT("StoGhostHead","Global",1)~THEN Stoghost Want2
~(The ghost points at the place where his head should be.)~
DO~GiveItemCreate("misc18",Player1,0,0,0)~
END
++~What do you mean, creature?~EXIT
++~You could tell me where the missing treasure is - if you had a mouth to talk?~EXIT

CHAIN
IF~NumTimesTalkedTo(2)GlobalLT("StoGhostHead","Global",1)~THEN Stoghost Want3
~(The ghost points at the place where his head should be and then at the treasure chest.)~
DO~SetGlobal("StoGhostHead","Global",1) GiveItemCreate("misc29",Player1,0,0,0) AddJournalEntry(@1011,QUEST)~
END
++~Maybe I can get rich this way. But I guess that's not intended here...~EXIT
++~The temples or the library could have lore or documents of who you were in life...~EXIT

CHAIN
IF~NumTimesTalkedToGT(2)~THEN Stoghost Want4
~(The ghost ignores you.)~EXIT

EXTEND_TOP Jalant 0 #1
IF ~Global("StoGhostHead","Global",2)~THEN REPLY ~We are looking for information about the remains of pirates that were exumed at the Sea Tower when the Selune temple was errected.~+ Umberl1
IF~Global("StoDragonspell","Global",1)Global("Sto_Dragon","Global",2)~THEN REPLY~You sell those teleportation scrolls but they are not strong enough for the purpose I have. I need something to move a mountain...eh...I mean a dragon.~+ DraMo1
END

CHAIN
IF~~THEN Jalant DraMo1
~I will not ask you why you need such a thing because I don't have it. The only despicable place to sell such obscure artefacts could be that *Sorcerous Sundries*. Now leave.~
DO~SetGlobal("StoDragonspell","Global",2)~EXIT

CHAIN
IF~~THEN Jalant Umberl1
~Are you a necromancer, no, you don't look like one. Why would Umberlee help you when the Moon lunatics wouldn't?~
END
++~Because I make a 200gp donation to her coffers.~ + Umbmoney
++~Because she - or you - want to know why I want to know.~ + NoInterest
++~Because your life has more worth for you than a bit of lore.~EXTERN Jalant 11

CHAIN
IF~~THEN Jalant NoInterest
~Your curiosity is only of interest to yourself, neither me nor the Water Queen care for your business. Now leave.~EXIT

CHAIN
IF~~THEN Jalant Umbmoney
~The bodies of infidels are priced highly in these troubled times. Give me 2,000 gold and the information is yours. ~
END
++~2,000 gold, that's highway robbery!~EXTERN Jalant 14
IF~PartyGoldGT(1999)~THEN REPLY~All right then, we're willing to pay the cash.~ DO~SetGlobal("StoGhostHead","Global",3) ~+ Tellocate
++~We don't have the money right now.~EXIT

CHAIN
IF~~THEN Jalant Tellocate
~It is pleasant to do business with you. Now listen.~
DO~TakePartyGold(2000)AddJournalEntry(@1012,QUEST)~
=~Those trespassers against Umberlee could not been buried in the sacred grounds of any temple in Baldur's Gate. The place to get rid of any cursed corpses has been the Valley of Tombs east of Nashkel at the times we speak about here. Go and search there.~EXIT