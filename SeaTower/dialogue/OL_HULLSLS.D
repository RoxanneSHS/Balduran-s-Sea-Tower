APPEND Hull

IF WEIGHT #-2~Global("HelpHull","Global",1)CheckStatGT(Player1,9,INT)CheckStatGT(Player1,13,CHR)~THEN BEGIN hullsls
  SAY ~Thank you for retrieving my heirloom, <CHARNAME>. Hey I heard that Gorion is leaving soon and wanted you to get supplies for the road; including a good weapon and this one is masterwork! My grandfather Keel passed the sword down to my father and father passed this sword down to myself. The sword was made to defend friends of the family. I always wanted to pass it to my kid one day, *Sigh* but...~
  =~Maybe I won't have kids and maybe I would regret one day to have let you go without protection. Gorion is a good friend and with all the bandits on the roads I figured you could protect yourselves better than I could stuck here. Yet this is a family heirloom, but for you it will cost ya 315 gold.~
  +~PartyGoldGT(315)~+~A fair price, my friend. I have a dangerous journey ahead of me and I will need a good weapon. Here is the 315 gold to buy the long sword, Hull.~ + HullsLongSword
  +~TRUE()~+~Perhaps later, Hull; thank you for the offer. I have got to go, have a good day, my friend.~ EXIT
END

IF ~~ HullsLongSword
  SAY ~Thanks for the gold, mate I will be needing that to pay off my mead fueled gambling debt from last night, I nearly gambled this sword away ha! Ah yes and here is the long sword. I preferred training with halberds and quarterstaves anyway ha! You better not be hacking trees with that sword it ain't no axe you hear!~
  IF ~~ THEN DO ~GiveItem("OLSW1H12",LastTalkedToBy) TakePartyGold(315) SetGlobal("HelpHull","Global",2)~ EXIT
END


IF WEIGHT #-2~Global("HelpHull","Global",2)~ THEN BEGIN hullsls
  SAY ~Best of luck, mate. Carry the sword well would'ya mate? I don't want to see you dragging that sword's scabbard thin! ~
  +~TRUE()~+~I will carry the sword well, Hull. If anything happens on the road I got a fine sword to defend myself and Gorion~ + CarryWell
END

IF ~~ BEGIN CarryWell
  SAY ~Slay a monster for me, will ya mate? It gets so boring around here. Sometimes I wish I had joined the army to see more action. Eh, but the pay is good and steady and I don't know if I could give up being too far away from the mead cellars ha!~ 
  IF ~~ THEN DO ~~ EXIT
END

END

