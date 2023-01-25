# Constant-Player-Movement-Speed
It keeps the player's movement speed and prevents walking in slow motion.

Different mods add debuff to the player which slows the movement speed. This mod prevents that by monitoring the "SpeedMult" actor value for the player and restoring it if it's not at the default value.

By default the mod doesn't change player speed when in combat to enable it in combat use this console command:
set zzzmrt_EnableInCombat to 1

By default player's "SpeedMult" actor value will be kept at 100. Edit zzzmrt_MyDefaultSpeed global value to change the default speed:
set zzzmrt_MyDefaultSpeed to 110

To Stop the mod: 
set zzzmrt_EnableMod to 0

To start The mod run this command then change location or save the game then load that savegame:
set zzzmrt_EnableMod to 1

