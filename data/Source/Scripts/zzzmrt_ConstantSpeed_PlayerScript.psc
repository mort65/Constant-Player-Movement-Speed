Scriptname zzzmrt_ConstantSpeed_PlayerScript extends ReferenceAlias

GlobalVariable property EnableInCombat auto
GlobalVariable property EnableMod auto
GlobalVariable property MyDefaultSpeed auto
Actor property Player auto

Float fSpeedDiff = 0.0

event OnInit()
  if (EnableMod.GetValueInt() == 1)
    RegisterForSingleUpdate(3.0)
  endif
endevent

event OnLocationChange(Location akOldLoc, Location akNewLoc)
  if (EnableMod.GetValueInt() == 1)
    RegisterForSingleUpdate(3.0)
  endif
endevent

event OnPlayerLoadGsame()
  if (EnableMod.GetValueInt() == 1)
    RegisterForSingleUpdate(3.0)
  endif
endevent

event OnUpdate()
  if (EnableInCombat.GetValueInt() == 1) || (Player.GetCombatState() == 0)
    fSpeedDiff = MyDefaultSpeed.GetValue() - player.GetActorValue("SpeedMult")
    if (fSpeedDiff != 0.0)
      player.ModActorValue("SpeedMult", fSpeedDiff)
    endif
  endif
  if EnableMod.GetValueInt() == 1
    RegisterForSingleUpdate(3.0)
  endif
endevent
