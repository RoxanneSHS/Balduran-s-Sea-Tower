APPEND Hull

IF WEIGHT #-2~Global("HelpHull","Global",1)CheckStatGT(Player1,9,INT)CheckStatGT(Player1,13,CHR)~THEN BEGIN hullsls
  SAY @0
  =@1
  +~PartyGoldGT(315)~+@2 + HullsLongSword
  +~TRUE()~+@3 EXIT
END

IF ~~ HullsLongSword
  SAY @4
  IF ~~ THEN DO ~GiveItem("OLSW1H12",LastTalkedToBy) TakePartyGold(315) SetGlobal("HelpHull","Global",2)~ EXIT
END


IF WEIGHT #-2~Global("HelpHull","Global",2)~ THEN BEGIN hullsls
  SAY @5
  +~TRUE()~+@6 + CarryWell
END

IF ~~ BEGIN CarryWell
  SAY @7 
  IF ~~ THEN DO ~~ EXIT
END

END

