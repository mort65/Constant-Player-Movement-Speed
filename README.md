# Constant-Player-Movement-Speed
Maintains the player character's movement speed and prevents walking in slow motion.

Many mods add annoying debuffs to the player which slows the movement speed and When they stack player walks in slow motion or doesn't move at all. 
This mod prevents that by monitoring the "SpeedMult" actor value for the player and restoring it if it's not at the default value.

By default the mod doesn't change player speed when in combat to enable it in combat use this console command:

    set zzzcms_EnableInCombat to 1

By default player's "SpeedMult" actor value will be kept at 100. Edit zzzmrt_MyDefaultSpeed global value to change the default speed:

    set zzzcms_MyDefaultSpeed to 110

To Stop the mod: 

    set zzzcms_EnableMod to 0

To start The mod run this command then change location or save the game then load that savegame:

    set zzzcms_EnableMod to 1
