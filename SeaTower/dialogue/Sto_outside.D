BEGIN STOGRD1
BEGIN STOGRD4
BEGIN STOHELM
BEGIN STOSELU
BEGIN STOSCAR
BEGIN Stotronk
BEGIN Stoflund

CHAIN 
IF~  Global("StoGotPass","GLOBAL",0)~THEN Stogrd1 Enter1
@0
DO~SetGlobal("StoGotPass","GLOBAL",1)~
END
++@1 + Enter2
++@2 + Enter3
++@3 + Enter4
++@4 + Enter4
IF~PartyHasItem("Stopass")~THEN REPLY@5 + Enter5

CHAIN
IF~ Global("StoGotPass","GLOBAL",1)~THEN Stogrd1 Enter7
@6
END
++@1 + Enter2
++@2 + Enter3
++@3 + Enter4
++@4 + Enter4
IF~PartyHasItem("Stopass")~THEN REPLY@5 + Enter5

CHAIN
IF~~THEN Stogrd1 Enter2
@7 EXIT

CHAIN
IF~~THEN Stogrd1 Enter3
@8 EXIT

CHAIN
IF~~THEN Stogrd1 Enter4
@9 EXIT

CHAIN
IF~~THEN Stogrd1 Enter5
@10
DO ~Unlock("Door 09") OpenDoor("Door 09") OpenDoor("Door 13") SetGlobal("StoGotPass","GLOBAL",2) ~EXIT

CHAIN
IF~Global("StoGotPass","GLOBAL",2) ~THEN Stogrd1 Enter6
@11 EXIT

CHAIN
IF WEIGHT #-2~NumberOfTimesTalkedTo(0) AreaCheck("STO100")~THEN Smuggl Alternative1
@12
END
++@13+ Alternative2
++@14 + Alt1Gone

CHAIN
IF~~THEN Smuggl Alt1Gone
@15DO~EscapeArea()~EXIT

CHAIN
IF~~THEN Smuggl Alternative2
@16
END
++@17 + Alt1Gone
++@18+ AltGone2
++@19DO~SetGlobal("StoGotPass","GLOBAL",65)~ + MoveBackside
++@20+ Alt1Gone

CHAIN
IF~~THEN Smuggl AltGone2
@21DO~EscapeArea()~EXIT

CHAIN
IF~~THEN Smuggl MoveBackside
@22DO~TakePartyGold(2000) ClearAllActions() StartCutSceneMode() Wait(1) StartCutScene("StoCut1")~EXIT

CHAIN
IF WEIGHT #-2~AreaCheck("Sto100")~THEN RSDMnk01 Seltow3
@23EXIT

CHAIN
IF ~RandomNum(2,0)~ THEN STOGRD4 g0
@24 EXIT

CHAIN
IF ~RandomNum(2,1)~ THEN STOGRD4 g1
@25  EXIT

CHAIN
IF ~RandomNum(2,2)~ THEN STOGRD4 g2
@26 EXIT