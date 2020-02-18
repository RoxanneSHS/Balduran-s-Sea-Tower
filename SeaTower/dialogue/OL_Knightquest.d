ADD_STATE_TRIGGER Knight 1
~!PartyHasItem("MISC48")~

ADD_STATE_TRIGGER Knight 0
~Global("OL_knight_quest","GLOBAL",0)~

APPEND Knight

IF WEIGHT #-2~PartyHasItem("MISC82") Global("OL_knight_quest","GLOBAL",0)~THEN BEGIN HasArmour1
SAY~So it was... So it is... Together enter... Together fall... Brother traitor completes the one...~
=~But duty is not fulfilled...Kozah still haunts. Find the idol, secure the threat...we wait.~
IF~~THEN DO~ TakePartyItem("MISC82")
SetGlobal("bd_knight_quest","GLOBAL",1)
Wait(1)
SetGlobal("OL_knight_quest","GLOBAL",1)
AddexperienceParty(1500)
EraseJournalEntry(27213)
Wait(2)
AddJournalEntry(@1001,QUEST)~EXIT
END

//Question??
// Ancient Armor take or keep?
//Erase original journal entry?

IF WEIGHT #-3~PartyHasItem("MISC48")Global("OL_knight_quest","GLOBAL",1)~THEN BEGIN HasIdol1
SAY~It is done...Kozah is in your hand, you are strong!~
=~Aah...what is this?...~
=~Sssstormss shall bring doom to theeee... Idollll so commandsssss... Echtah tuln no osa KOZAH!~
IF~~THEN DO~ SetGlobal("OL_knight_quest","GLOBAL",2)
AddexperienceParty(1500)
EraseJournalEntry(@1001)
Wait(1)
AddJournalEntry(@1002,QUEST_DONE)
Wait(1)
ActionOverride("KNIGHT1",Enemy())
ActionOverride("KNIGHT2",Enemy())
ActionOverride("KNIGHT3",Enemy())
ActionOverride("KNIGHT4",Enemy())
ActionOverride("KNIGHT5",Enemy())
ActionOverride("KNIGHT6",Enemy())
Wait(1)
~EXIT
END


END