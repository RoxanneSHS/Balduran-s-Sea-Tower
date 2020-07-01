BEGIN Stomage1
BEGIN StoBill
BEGIN StoLiia
BEGIN StoWinsk

CHAIN
IF WEIGHT #-8~Global("ScarMission","GLOBAL",5) Global("STO_ScarDoppel","Global",0)~THEN Scar Start1
@0
DO~SetGlobal("STO_ScarDoppel","Global",1)~
END
++@1 + Start2
++@2 + Start2
++@3 + Start2

CHAIN
IF~~THEN Scar Start2
@4
=@5
END
++@6 + Start3
IF~GlobalGT("StoGotPass","GLOBAL",0)~THEN REPLY@7 + Start3
IF~Global("StoGotPass","GLOBAL",0)~THEN REPLY@8 + Start3
++@9 + NoStart

CHAIN
IF~~THEN Scar NoStart
@10
=@11EXIT

CHAIN
IF~~THEN Scar Start3
@12
END
IF~PartyHasItem("stopass")~THEN REPLY@13 + Start4
++@9 + NoStart
++@14  + Start5

CHAIN
IF~~THEN Scar Start4
@15DO~SetGlobal("STO_ScarDoppel","Global",2) AddJournalEntry(@1004,QUEST)~EXIT

CHAIN
IF~~THEN Scar Start5
@16DO~SetGlobal("STO_ScarDoppel","Global",2) GiveItemCreate("stopass",Player1,0,0,0) AddJournalEntry(@1004,QUEST)~EXIT

CHAIN
IF WEIGHT #-8~Global("ScarMission","GLOBAL",5) Global("STO_ScarDoppel","Global",8)~THEN Scar Result1
@17
DO~SetGlobal("STO_ScarDoppel","Global",9)~
END
++@18+ Result2
++@19 + Result2

CHAIN
IF~~ THEN Scar Result2
@20
=@21
END
++@22 + Result3
++@23 + Result3

CHAIN
IF~~ THEN Scar Result3
@24
DO~AddexperienceParty(9000)~
END
++@25 + Result4
++@26 + Result5
++@27 + Result5

CHAIN
IF~~ THEN Scar Result5
@28
EXTERN Scar Result7

CHAIN
IF~~ THEN Scar Result4
@29
EXTERN Scar Result7

CHAIN
IF~~ THEN Scar Result7
@30DO~EraseJournalEntry(@1004) EraseJournalEntry(@1006) EraseJournalEntry(@1007) EraseJournalEntry(@1009) EraseJournalEntry(@1010)~  EXIT

CHAIN
IF WEIGHT #-8~Global("ScarMission","GLOBAL",5) Global("STO_ScarDoppel","Global",12)~THEN Scar Result12
@17
DO~SetGlobal("STO_ScarDoppel","Global",13)~
END
++@31 + Result13
++@32 + Result13

CHAIN
IF~~THEN Scar Result13
@33DO~EraseJournalEntry(@1004) EraseJournalEntry(@1005) ~EXTERN Scar NoStart

CHAIN
IF~Global("Arealook","Sto102",1)~THEN Stomage1 Secret1
@34
END
++@35+ Secret2
IF~Global("STO_ScarDoppel","Global",2)~THEN REPLY@36+ Secret3
++@37+ Secret2
++@38DO~SetGlobal("STO_ScarDoppel","Global",12)~+ Secret4

CHAIN
IF~~THEN Stomage1 Secret2
@39EXIT

CHAIN
IF~~THEN Stomage1 Secret4
@40DO~AddJournalEntry(@1005,QUEST_DONE) Enemy()~EXIT

CHAIN
IF~~THEN Stomage1 Secret3
@41
DO~SetGlobal("Arealook","Sto102",2)~
END
++@42 + Secret5
++@38+ Secret5
++@43 + Secret5

CHAIN
IF~~THEN Stomage1 Secret5
@44
DO~AddJournalEntry(@1006,QUEST)~
=@45DO~	MoveToPointNoInterrupt([600.502]) EscapeAreaDestroy(20)~EXIT

CHAIN
IF~AreaCheck("Sto103")~ THEN StoScar Trap103
@46
DO~AddJournalEntry(@1007,QUEST) Wait(1) ApplySpell(Myself,DOPPLEGANGER_CHANGE4)~ EXIT

CHAIN
IF~AreaCheck("Sto201")~THEN StoBill Invite1
@47
END
++@48 + Invite2
++@49 + Invite2

CHAIN
IF~~THEN StoBill Invite2
@50DO~ApplySpell(Myself,DOPPLEGANGER_CHANGE4)~ EXIT

CHAIN
IF~Global("STO_ScarDoppel","Global",6)~THEN StoWinsk Again1
@51
DO~SetGlobal("STO_ScarDoppel","Global",7)~
==Stowinsk IF~GlobalLT("X#DYJWADM","GLOBAL",2) GlobalLT("SanOrDiId","GLOBAL",5)~THEN@52
==Stowinsk IF~OR(2)GlobalGT("X#DYJWADM","GLOBAL",1)GlobalGT("SanOrDiId","GLOBAL",4)~THEN@53
END
++@54+ Again2
++@55+ Again2
IF~OR(2)GlobalGT("X#DYJWADM","GLOBAL",1)GlobalGT("SanOrDiId","GLOBAL",4)~THEN REPLY@56+ Again2

CHAIN
IF~~THEN StoWinsk Again2
@57
DO~AddJournalEntry(@1010,QUEST)~
==Stowinsk IF~InParty("Dynaheir")~THEN@58
==DynahJ IF~InParty("Dynaheir")~THEN@59
==Stowinsk IF~InParty("Dynaheir")~THEN@60
==DynahJ IF~InParty("Dynaheir")~THEN@61
END
++@62 + Again3
++@63 + Again3

CHAIN
IF~~THEN StoWinsk Again3
@64
=@65
=@66
=@67 DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF WEIGHT #-2~Global("StoBackWay","Sto104",1)~THEN Rahvin Backway
@68
DO~ActionOverride("GORF",Enemy()) ActionOverride("CARSTON",Enemy()) Enemy()~EXIT