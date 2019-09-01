EXTEND_TOP Volo 0 #3
IF ~Global("StoEmporiumExists","Global",0) Global("AskEmporium","Locals",0)~THEN REPLY ~Do you know where we can enhance our equipment in this area?~DO~SetGlobal("AskEmporium","Locals",1)~+ Empovol
END

EXTEND_TOP Volo 1 #3
IF ~Global("StoEmporiumExists","Global",0) Global("AskEmporium","Locals",0)~THEN REPLY ~Do you know where we can enhance our equipment in this area?~DO~SetGlobal("AskEmporium","Locals",1)~+ Empovol
END

CHAIN
IF~~THEN Volo Empovol
~There's no place from the Cloud Peaks to Waterdeep that I haven't visited and described in detail in my books, my friend. The Thunderhammer Smithy at Beregost is reknown for quality items and Taerom is a master of his trade. Only surpassed by the famous Michael of Baldur's Gate who owns the Arms and Armour Emporium north of the Elfsong near the City's Gate. Michael can turn even the best of weapons into something better still.~EXIT

EXTEND_TOP Taerom 14 #2
IF ~Global("StoEmporiumExists","Global",0) Global("AskEmporium","Locals",0)~THEN REPLY ~I wonder if you could enhance any of my equipment with your skills?~DO~SetGlobal("AskEmporium","Locals",1)~+ Empotaer
END

CHAIN
IF~~THEN Taerom Empotaer
~The current tension in the area gives me little chance to do this. I can recommend my former master and teacher to you, Michael of Baldur's Gate. You find his Arms and Armour Emporium in the street north of the Elfsong Tavern. Give him my greetings if you go there.~EXIT

CHAIN
IF~ Global("StoEmporiumExists","Global",0)~THEN RFrien RHint1
~The famous Michael of Baldur's Gate who owns the Arms and Armour Emporium north of the Elfsong near the City's Gate is probably the best smith on the Sword Coast to enhance your weaponry.~EXIT

CHAIN
IF~ Global("StoEmporiumExists","Global",0)~THEN Rbereg RHint2
~The famous Michael of Baldur's Gate who owns the Arms and Armour Emporium north of the Elfsong near the City's Gate is probably the best smith on the Sword Coast to enhance your weaponry.~EXIT

CHAIN
IF~ Global("StoEmporiumExists","Global",0)~THEN RNashk RHint2
~The famous Michael of Baldur's Gate who owns the Arms and Armour Emporium north of the Elfsong near the City's Gate is probably the best smith on the Sword Coast to enhance your weaponry.~EXIT