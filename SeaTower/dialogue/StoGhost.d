BEGIN StoGhost

CHAIN
IF~Global("BePirate","Locals",3) ~THEN Stoghost FinalRest1
@0
=@1
END
IF~Global("StoDragonspell","Global",2)~THEN REPLY@2DO~Enemy()~EXIT
++@3DO~Enemy()~EXIT
++@4DO~Enemy()~EXIT

CHAIN
IF~GlobalGT("StoGhostHead","Global",1) PartyHasItem("Stoskul")~THEN Stoghost Head1
@5
END
++@6 + Head2
++@7 + Head2
++@8 + Head2

CHAIN
IF~~THEN Stoghost Head2
@9
END
++@10DO~SetGlobal("BePirate","Locals",1)TakePartyItem("Stoskul")~EXIT
++@11DO~SetGlobal("BePirate","Locals",1)TakePartyItem("Stoskul")~EXIT
++@12DO~ActionOverride(Player1,Attack("stoghost")) Enemy()~EXIT

CHAIN
IF~Global("BePirate","Locals",2)~THEN Stoghost Head3
@13
DO~SetGlobal("BePirate","Locals",3)~
=@14
END
++@15 + Head4
++@16 + Head4
++@17 + Head4

CHAIN
IF~~THEN Stoghost Head4
@18
=@19
=@20
END
++@21 + Head5
++@22 + Head5

CHAIN
IF~~THEN Stoghost Head5
@23
=@24
=@25
END
++@26 + Head6
++@27 + Head6
++@28 + Head6
++@29 + Head6

CHAIN
IF~~THEN Stoghost Head6
@30
=@31
END
++@32+ Head7
++@33+ Head7

CHAIN
IF~~THEN Stoghost Head7
@34
DO~EraseJournalEntry(@1011)  EraseJournalEntry(@1012) EraseJournalEntry(@1013)~
=@35
END
++@36 + Head9
++@37 + Head8
++@38 + Head10

CHAIN
IF~~THEN Stoghost Head8
@39DO~RandomWalk()~EXIT

CHAIN
IF~~THEN Stoghost Head9
@40DO~GiveItemCreate("stoamuB",Player1,0,0,0) RandomWalk()~EXIT

CHAIN
IF~~THEN Stoghost Head10
@41DO~GiveItemCreate("stoamuB",Player1,0,0,0) RandomWalk()~EXIT

CHAIN
IF~NumTimesTalkedTo(0)GlobalLT("StoGhostHead","Global",1)~THEN Stoghost Want1
@42
END
++@43EXIT
++@44EXIT
++@45EXIT

CHAIN
IF~NumTimesTalkedTo(1)GlobalLT("StoGhostHead","Global",1)~THEN Stoghost Want2
@46
DO~GiveItemCreate("misc18",Player1,0,0,0)~
END
++@47EXIT
++@48EXIT

CHAIN
IF~NumTimesTalkedTo(2)GlobalLT("StoGhostHead","Global",1)~THEN Stoghost Want3
@49
DO~SetGlobal("StoGhostHead","Global",1) GiveItemCreate("misc29",Player1,0,0,0) AddJournalEntry(@1011,QUEST)~
END
++@50EXIT
++@51EXIT

CHAIN
IF~NumTimesTalkedToGT(2)~THEN Stoghost Want4
@52EXIT

EXTEND_TOP Jalant 0 #1
IF ~Global("StoGhostHead","Global",2)~THEN REPLY @53+ Umberl1
IF~Global("StoDragonspell","Global",1)Global("Sto_Dragon","Global",2)~THEN REPLY@54+ DraMo1
END

EXTEND_TOP Jalant 7 #1
IF ~Global("StoGhostHead","Global",2)~THEN REPLY @53+ Umberl1
IF~Global("StoDragonspell","Global",1)Global("Sto_Dragon","Global",2)~THEN REPLY@54+ DraMo1
END

CHAIN
IF~~THEN Jalant DraMo1
@55
DO~SetGlobal("StoDragonspell","Global",2)~EXIT

CHAIN
IF~~THEN Jalant Umberl1
@56
END
++@57 + Umbmoney
++@58 + NoInterest
++@59EXTERN Jalant 11

CHAIN
IF~~THEN Jalant NoInterest
@60EXIT

CHAIN
IF~~THEN Jalant Umbmoney
@61
END
++@62EXTERN Jalant 14
IF~PartyGoldGT(1999)~THEN REPLY@63 DO~SetGlobal("StoGhostHead","Global",3) ~+ Tellocate
++@64EXIT

CHAIN
IF~~THEN Jalant Tellocate
@65
DO~TakePartyGold(2000)AddJournalEntry(@1012,QUEST)~
=@66EXIT