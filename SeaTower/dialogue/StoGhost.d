BEGIN StoGhost

CHAIN
IF~NumTimesTalkedTo(0)~THEN Stoghost Want1
~(The ghost points at the empty treasure chest next to him.)~
END
++~No head, no gold, no rest. Poor creature, you've seen better days for sure.~EXIT
++~If you had a head you'd probably be able to tell me your story.~EXIT
++~I may just put you out of your mysery, but you're dead already.~EXIT

CHAIN
IF~NumTimesTalkedTo(1)~THEN Stoghost Want2
~(The ghost points at the place where his head should be.)~
DO~GiveItemCreate("misc18",Player1,0,0,0)~
END
++~What do you mean, creature?~EXIT
++~You could tell me where the missing treasure is - if you had a mouth to talk?~EXIT

CHAIN
IF~NumTimesTalkedTo(2)~THEN Stoghost Want3
~(The ghost points at the place where his head should be and then at the treasure chest.)~
DO~GiveItemCreate("misc29",Player1,0,0,0) AddJournalEntry(@1011,QUEST)~
END
++~Maybe I can get rich this way. But I guess that's not intended here...~EXIT
++~The temples or the library could have lore or documents of who you were in life...~EXIT

CHAIN
IF~NumTimesTalkedToGT(2)~THEN Stoghost Want4
~(The ghost ignores you.)~EXIT