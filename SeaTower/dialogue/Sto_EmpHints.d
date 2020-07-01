EXTEND_TOP Volo 0 #3
IF ~Global("StoEmporiumExists","Global",0) Global("AskEmporium","Locals",0)~THEN REPLY @0DO~SetGlobal("AskEmporium","Locals",1)~+ Empovol
END

EXTEND_TOP Volo 1 #3
IF ~Global("StoEmporiumExists","Global",0) Global("AskEmporium","Locals",0)~THEN REPLY @0DO~SetGlobal("AskEmporium","Locals",1)~+ Empovol
END

CHAIN
IF~~THEN Volo Empovol
@1EXIT

EXTEND_TOP Taerom 14 #2
IF ~Global("StoEmporiumExists","Global",0) Global("AskEmporium","Locals",0)~THEN REPLY @2DO~SetGlobal("AskEmporium","Locals",1)~+ Empotaer
END

CHAIN
IF~~THEN Taerom Empotaer
@3EXIT

CHAIN
IF~ Global("StoEmporiumExists","Global",0)~THEN RFrien RHint1
@4EXIT

CHAIN
IF~ Global("StoEmporiumExists","Global",0)~THEN Rbereg RHint2
@4EXIT

CHAIN
IF~ Global("StoEmporiumExists","Global",0)~THEN RNashk RHint2
@4EXIT