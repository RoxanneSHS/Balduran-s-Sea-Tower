CHAIN
IF~Global("STO_ScarDoppel","Global",2)~THEN StoLiia Help1
@0
END
++@1 + Help2
++@2 + Help2
++@3 + Help3

CHAIN
IF~~THEN StoLiia Help3
@4 EXTERN StoLiia Help2

CHAIN
IF~~THEN StoLiia Help2
@5
=@6
END
++@7+ Help4
++@8+ Help4

CHAIN
IF~~THEN StoLiia Help4
@9
END
++@10DO~SetGlobal("STO_ScarDoppel","Global",3)~EXIT
IF~PartyHasItem("StoCell")~ THEN REPLY@11+ Help6
++@12DO~SetGlobal("STO_ScarDoppel","Global",3)~EXIT

CHAIN
IF~Global("STO_ScarDoppel","Global",3) PartyHasItem("StoCell")~ THEN StoLiia Help5
@13
END
++@14DO~TakePartyItem("Stocell") DestroyItem("Stocell") SetGlobal("STO_ScarDoppel","Global",4)~EXIT
++@15DO~TakePartyItem("Stocell") DestroyItem("Stocell") SetGlobal("STO_ScarDoppel","Global",4)~EXIT

CHAIN
IF~~ THEN StoLiia Help6
@13
END
++@14DO~TakePartyItem("Stocell") DestroyItem("Stocell") SetGlobal("STO_ScarDoppel","Global",4)~EXIT
++@15DO~TakePartyItem("Stocell") DestroyItem("Stocell") SetGlobal("STO_ScarDoppel","Global",4)~EXIT

CHAIN
IF~Global("STO_ScarDoppel","Global",5)~THEN StoLiia Imoen1
@16
DO~SetGlobal("STO_ScarDoppel","Global",6)~
=@17
==%IMOEN_JOINED% IF~InParty("%IMOEN_DV%")~THEN@18
==StoLiia IF~InParty("%IMOEN_DV%")~THEN@19
==%IMOEN_JOINED% IF~InParty("%IMOEN_DV%")~THEN@20
==StoLiia IF~InParty("%IMOEN_DV%")~THEN@21
END
IF~InParty("%IMOEN_DV%")~THEN REPLY@22+ Imoen2
IF~!InParty("%IMOEN_DV%")~THEN REPLY@23 + Imoen3

CHAIN
IF~~THEN StoLiia Imoen2
@24
=@25EXIT

CHAIN
IF~~THEN StoLiia Imoen3
@26 EXTERN StoLiia Imoen2

I_C_T Liia 2 StoLiiaPalace
==Liia IF~GlobalGT("STO_ScarDoppel","Global",6) GlobalLT("STO_ScarDoppel","Global",12)~THEN@27
END