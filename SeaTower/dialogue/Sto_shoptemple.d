CHAIN
IF~GlobalLT("STO_ScarDoppel","Global",3)~THEN Stohelm HeSuspicion1
@0
END
++@1 + HeSuspicion2
IF~Global("SaidStrange","Locals",0)~THEN REPLY@2 + HeSuspicion2
++@3DO ~StartStore("tem0002",LastTalkedToBy(Myself)) ~ EXIT
IF~Global("StoGhostHead","Global",1)Global("AskHeads","Locals",0)~THEN REPLY@4DO~SetGlobal("AskHeads","Locals",1)~ + HeadsH1

CHAIN
IF ~  True() ~ THEN Stohelm Routine
@5
END
++@1 EXIT
++@3DO ~StartStore("tem0002",LastTalkedToBy(Myself)) ~ EXIT
IF~Global("StoGhostHead","Global",1)Global("AskHeads","Locals",0)~THEN REPLY@4DO~SetGlobal("AskHeads","Locals",1)~ + HeadsH1

CHAIN
IF~~THEN Stohelm HeSuspicion2
@6
DO~SetGlobal("SaidStrange","Locals",1)~
=@7
END
++@8EXIT
++@9DO ~StartStore("tem0002",LastTalkedToBy(Myself)) ~ EXIT

CHAIN
IF~~THEN Stohelm HeadsH1
@10EXIT

CHAIN
IF ~  True() ~ THEN Stoselu RoutineSel
@11
END
IF~InParty("Rasaad")~THEN REPLY@12DO ~StartStore("olselune",LastTalkedToBy(Myself)) ~ EXIT
++@13 EXIT
IF~!InParty("Rasaad")~THEN REPLY@14DO ~StartStore("olselune",LastTalkedToBy(Myself)) ~ EXIT
IF~Global("StoGhostHead","Global",1)~THEN REPLY@4 + Heads2
IF~Global("StoDragonspell","Global",1)Global("Sto_Dragon","Global",2)~THEN REPLY@15+ DraMo1
IF~PartyHasItem("Stoeggs")~THEN REPLY@16 + Seluneggs1

CHAIN
IF ~~ THEN Stoselu Seluneggs1
@17
=@18EXIT

CHAIN
IF~~THEN Stoselu DraMo1
@19
DO~SetGlobal("StoDragonspell","Global",2)~EXIT

CHAIN
IF~~THEN Stoselu Heads2
@20
DO~SetGlobal("StoGhostHead","Global",2)~
=@21
END
++@22 + Heads3
++@23 + Heads3

CHAIN
IF~~THEN Stoselu Heads3
@24EXIT


CHAIN
IF ~Global("Stoscales","Locals",2)~ THEN Stotronk Tronkscales21
@25
=@26DO~SetGlobal("Stoscales","Locals",3) GiveItemCreate("stobrarm",Player1,0,0,0)~EXIT

CHAIN
IF ~!Global("Stoscales","Locals",2)~ THEN Stotronk RoutineTronk
@27
END
++@28 + RoutineTronk2
++@29DO~ StartStore("olblksmt",LastTalkedToBy(Myself))~EXIT
IF~Global("StoEmporiumExists","Global",0)PartyHasItem("Stoscale")~THEN REPLY@30 + Tronkscales1
++@31+ RoutineTronk2
IF~Global("StoEmporiumExists","Global",1)PartyHasItem("Stoscale")~THEN REPLY@30 + Tronkscales11
IF~PartyHasItem("Stoeggs")~THEN REPLY@16 + Tronkseggs1

CHAIN
IF ~~ THEN Stotronk RoutineTronk2
@32EXIT

CHAIN
IF ~~ THEN Stotronk Tronkseggs1
@33
=@34EXIT

CHAIN
IF ~~ THEN Stotronk Tronkscales1
@35
END
IF~PartyGoldLT(5000)~THEN REPLY@36 + Tronkscales3
IF~PartyGoldGT(4999)~THEN REPLY@37DO~SetGlobal("Stoscales","Locals",2)TakePartyGold(5000) TakePartyItem("Stoscale") DestroyItem("Stoscale") ActionOverride("Stotronk",Face(6))~+ Tronkscales2
++@38+ Tronkscales3

CHAIN
IF ~~ THEN Stotronk Tronkscales11
@39
END
++@40+ Tronkscales1
++@41 + Tronkscales3

CHAIN
IF ~~ THEN Stotronk Tronkscales2
@42 DO~StartCutSceneMode()MoveViewObject("Stotronk",5) Wait(1) CreateVisualEffectObject("spcrtwpn","Stotronk") Wait(6) EndCutSceneMode() ActionOverride("Stotronk",Dialogue([PC]))~EXIT

CHAIN
IF ~~ THEN Stotronk Tronkscales3
@43EXIT
