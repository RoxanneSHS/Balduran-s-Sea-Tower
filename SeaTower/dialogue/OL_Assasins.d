BEGIN OLMELIAQ

IF ~True()~ THEN BEGIN 0
  SAY ~Your life means nothing to me. Although my employer has placed a pretty penny upon a head much like your own. Say would you be as so kind and lay down and die? T'would be most convenient.~
  ++ ~Over my dead body you runt-legged wench! I'll be knocking you flat to be pushing up daisies and taking your pretty pennies!~ + OverMyDeadBody
  ++ ~Hold on there my lady, what if this head is not the one you are after? There are many heads that look alike, who is your employer anyway?~ + HoldOnThere
  ++ ~Why ask your foes to lay down and die? I see you come baring arms surely you don't expect myself to just lay down and die? What about the stuggle of life and death? If I am to die I would first like to know who put a price on my head.~ + WhyAskYourFoes
END

IF ~~ BEGIN WhyAskYourFoes
  SAY ~Why this line of work gets so tiresome, tracking and hunting for days on end; I just want to get paid. Eh a girl has got to do what a girl has got to do. I ain't telling nobody who pays me mate, lest me head roll off one night. Everytime the same question! Stubborn ilk you all are.~
  ++ ~Lazy bastard! I'll give you a fight you pint-sized ragamuffin!~ + LazyBastard
  ++ ~I will not give my life to you willingly, especially to fatten someone else's coin purse. Get a real job, you hack scum-brained bandit.~ + IWillNotGive
  ++ ~Such needless violence, live by the sword, er, flail die by the flail. One day all this indiscriminate killing will catch up to you my lady. Can't we just part ways without violence?~ + SuchNeedlessViolence
END

IF ~~ BEGIN OverMyDeadBody
  SAY ~So rude! I'll swing me flails extra hard to crack your thick skull open; beat some manners into ya I will!~ 
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN LazyBastard
  SAY ~So rude! I'll swing me flails extra hard to crack your thick skull open; beat some manners into ya I will!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN IWillNotGive
  SAY ~So rude! I'll swing me flails extra hard to crack your thick skull open; beat some manners into ya I will!~ 
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN HoldOnThere
  SAY ~Well I'll take that risk, last time it was not so bad when I got it wrong. I got to keep the loot anyway, that is what everyone wants these days regardless. The boss does not take kindly to finks. So will you be a darling and just, DIE!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN SuchNeedlessViolence
  SAY ~Well I'll take that risk, last time it was not so bad when I got it wrong. I got to keep the loot anyway, that is what everyone wants these days regardless. The boss does not take kindly to finks. So will you be a darling and just, DIE!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

BEGIN OLDAENNI

IF ~True()~ THEN BEGIN 0
  SAY ~Your screams shall be music to my ears. Hold it right there while I take a better look at you. Mhmm, yep you fit the bill all right; time to die. Hold still will you? These spells can be a bit finicky at times.~
  ++ ~Hold still?!? I'll hit you so hard that you will never move again, you brain-dead wannabe spellcaster!~ + HoldStill
  ++ ~Whoa! You got us all wrong my lady, we are Blacktalon! We have come to help the boss with those troublesome adventurers.~ + Whoa
  ++ ~Can't we just settle this with some coin? How much are they paying you? I will double it! Just let us pass eh? What do you say?~ + CantWeJust
END

IF ~~ BEGIN HoldStill
  SAY ~You lot are always the brain-dead ones! Do you even know how long it took to memorize all of these spells you nincompoop? Why do I waste my time with such lower beings!?!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN Whoa
  SAY ~Oh really? Do you think that I am blind and dumb? The nerve! I will give you credit for trying but it will only get you dead, so congratulations. You get to die now!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN CantWeJust
  SAY ~Oh yeah, like these guys here will keep a secret. Do you have any idea just how literally cut-throat this line of work is? I might as well just hang myself and save myself the drama! Jeez, you adventurer lot always say the damnedest things. Heh, when I kill you I get all of your coins anyway silly.~
  IF ~~ THEN DO ~Enemy()~ EXIT
END