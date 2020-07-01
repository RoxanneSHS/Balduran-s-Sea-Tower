BEGIN OLMELIAQ

IF ~True()~ THEN BEGIN 0
  SAY @0
  ++ @1 + OverMyDeadBody
  ++ @2 + HoldOnThere
  ++ @3 + WhyAskYourFoes
END

IF ~~ BEGIN WhyAskYourFoes
  SAY @4
  ++ @5 + LazyBastard
  ++ @6 + IWillNotGive
  ++ @7 + SuchNeedlessViolence
END

IF ~~ BEGIN OverMyDeadBody
  SAY @8 
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN LazyBastard
  SAY @8
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN IWillNotGive
  SAY @8 
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN HoldOnThere
  SAY @9
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN SuchNeedlessViolence
  SAY @9
  IF ~~ THEN DO ~Enemy()~ EXIT
END

BEGIN OLDAENNI

IF ~True()~ THEN BEGIN 0
  SAY @10
  ++ @11 + HoldStill
  ++ @12 + Whoa
  ++ @13 + CantWeJust
END

IF ~~ BEGIN HoldStill
  SAY @14
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN Whoa
  SAY @15
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ BEGIN CantWeJust
  SAY @16
  IF ~~ THEN DO ~Enemy()~ EXIT
END