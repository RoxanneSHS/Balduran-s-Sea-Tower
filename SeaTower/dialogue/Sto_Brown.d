CHAIN
IF~Global("Sto_Dragon","Global",0) ~ THEN Stoflund TalkBrown1
@0
DO~SetGlobal("Sto_Dragon","Global",1)~
END
++@1 + TalkBrown2
++@2 + TalkBrown2
++@3 + TalkBrown2

CHAIN
IF~~ THEN Stoflund TalkBrown2
@4
=@5
=@6
END
++@7+ TalkBrown3
++@8 + TalkBrown3
++@9 + TalkBrown3
++@10 + TalkBrown3

CHAIN
IF~~ THEN Stoflund TalkBrown3
@11
==BDCorwiJ IF~InParty("Corwin")~THEN@12
==Stoflund IF~!InParty("CVSandr")~THEN@13
END
++@14 + TalkBrown4
++@15 + TalkBrown4

CHAIN
IF~~ THEN Stoflund TalkBrown4
@16
=@17
END
++@18 + TalkBrown5
++@19 + TalkBrown5
++@20 + TalkBrown5

CHAIN
IF~~ THEN Stoflund TalkBrown5
@21
=@22
DO~AddJournalEntry(@1008,QUEST) Wait(1) MoveToPointNoInterrupt([4473.2148])~ EXIT

CHAIN
IF~GlobalGT("StoDragonspell","Global",4) Global("StoDone","Locals",0)~THEN Stoflund TalkFin1
@23
DO~SetGlobal("StoDone","Locals",1)~
END
IF~Dead("stodrago")~THEN REPLY@24+ TalkFin2
IF~Global("StoDragonspell","Global",5)~THEN REPLY@25 + TalkFin3
++@26 + TalkFin4

CHAIN
IF~~THEN Stoflund TalkFin2
@27DO~EscapeArea()~EXIT

CHAIN
IF~~THEN Stoflund TalkFin3
@28DO~SetGlobal("StoDone","Locals",2)~EXIT

CHAIN
IF~~THEN Stoflund TalkFin4
@29DO~EscapeArea()~EXIT

CHAIN
IF~Global("StoDragonspell","Global",0)~THEN Stodrago NotWelc1
@30
DO~SetGlobal("StoDragonspell","Global",1)~
END
++@31+ NotWelc2
IF~Global("Sto_Dragon","Global",1)~THEN REPLY@32+ NotWelc2
IF~Global("Sto_Dragon","Global",1)~THEN REPLY@33 + NotWelc3
++@34+ NotWelc3

CHAIN
IF~~THEN Stodrago NotWelc3
@35 EXTERN Stodrago NotWelc4

CHAIN
IF~~THEN Stodrago NotWelc2
@36 EXTERN Stodrago NotWelc4

CHAIN
IF~~THEN Stodrago NotWelc4
@37
=@38
END
++@39 + NotWelc5
++@40 + NotWelc5
++@41DO~EraseJournalEntry(@1008) ENEMY()~EXIT

CHAIN
IF~~THEN Stodrago NotWelc5
@42
=@43
END
++@44 + NotWelc6
++@45 + NotWelc6
++@46EXIT
++@47 + NotWelc6

CHAIN
IF~~THEN Stodrago NotWelc6
@48
END
++@49DO~AddJournalEntry(@1015,QUEST)~+ NotWelc7
++@46EXIT
++@50 DO~AddJournalEntry(@1015,QUEST)~+ NotWelc7
++@51DO~EraseJournalEntry(@1008) ENEMY()~EXIT

CHAIN
IF~~THEN Stodrago NotWelc7
@52DO~GiveItemCreate("misc44",Player1,0,0,0)~EXIT

CHAIN
IF~Global("StoDragonspell","Global",1) GlobalLT("Sto_Dragon","Global",2)PartyHasItem("Scrl6q")~THEN Stodrago TooWeak1
@53
DO~SetGlobal("Sto_Dragon","Global",2)~
END
++@54 +TooWeak2
++@51DO~EraseJournalEntry(@1008) ENEMY()~EXIT

CHAIN
IF~~THEN Stodrago TooWeak2
@55DO~SetGlobal("StoFailed","sto205",1) TakePartyItemNum("Scrl6q",1) Wait(1) CreateVisualEffectObject("SPSump",Myself)~EXIT

CHAIN
IF~Global("StoFailed","sto205",1)~THEN Stodrago TooWeak3
@56
DO~SetGlobal("StoFailed","sto205",2)~
=@57
END
++@58DO~AddJournalEntry(@1016,QUEST)~+ TooWeak4
++@59 DO~AddJournalEntry(@1016,QUEST)~+ TooWeak4
++@60EXIT
++@61DO~EraseJournalEntry(@1008) EraseJournalEntry(@1015) ENEMY()~EXIT

CHAIN
IF~~THEN Stodrago TooWeak4
@62EXIT

CHAIN
IF~Global("StoDragonspell","Global",3) PartyHasItem("StoTele")~THEN Stodrago RightOne1
@63
=@64
END
++@65 + RightOne2
++@66 + RightOne2
++@67 + RightOne2

CHAIN
IF~~THEN Stodrago RightOne2
@68
DO~SetGlobal("StoDragonspell","Global",4) TakePartyItem("StoTele")~
=@69DO~ClearAllActions() Wait(1)StartCutSceneMode() StartCutScene("Stocut3")~ EXIT