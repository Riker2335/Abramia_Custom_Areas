# Chernarus AI Base DMS Static Mission

This is a large AI base objects &amp; static DMS mission in the north of Chernarus. This is simply a mission file and objects file for the DMS mission system used by ARMA 3 Exile. Mods used to create this are the CUP core,CUP maps and CUP Terrains CWA components. You will need these on the server to be able to show all the components of the mission.

This mission was created for a militarised server and has 2 roaming vehicles with the possibility of a Gorgon or armed Ifrit/Hunter/Strider. The AI vehicles that can be used by the mission are editable in an array at the top of the mission config.
Easy difficulty is configured for testing purposes and not intended for server deployment as it only has a small number of AI and a lot of loot. Medium difficulty is intended for small groups of 2-3, difficult for groups of 4 and hardcore as 5+ or just some very persistent smaller groups.

## This mission file is configured with equipment from CUP Weapons and CUP Vehicles. If you are not using these mods, check the optional install instructions below.

5 loot crates are configured;

1. General items
2. Sniper Rifles
3. Building Supplies
4. Medical supplies
5. Special items (laser designators, rockets & launchers etc.)

Crates 1 and 3 utilise the DMS lists for general items and building items. Crates 2, 4 and 5 utilise arrays within the mission file and are fully customisable. If you want something to have a higher chance of spawning in these crates, simply put more of that item in the array. You can also adjust the amount of loot in each crate if you want to make one particularly generous or another quite light in the difficulty setup section.

# Installation Instructions
1. Copy the ai_base_chernarus.sqf file to a3_dms.pbo's missions/static folder
2. Copy the ai_base_objects.sqf file to the a3_dms.pbo's objects/static folder
3. Open config.sqf in a3_dms.pbo, find the DMS_StaticMissionTypes section and append ["AI_Base_Chernarus",1] to the list
4. Still in the config.sqf file, find the DMS_BasesToImportOnServerStart section and appent ["AI_Base_Objects"] to the list
5. Save and close config.sqf
6. re-pack a3_dms.pbo with all the changes and ensure it is placed in the /@ExileServer/Addons folder to launch at server startup.

Enjoy a new static mission for Chernarus!

# Optional Install Instructions - Read this if you don't use CUP Weapons and/or CUP Vehicles.
1. If you do not have CUP Vehicles installed on your server, locate "ai_vehicle_list = " in AI_Base_Chernarus.sqf and delete the lines in that array that have the prefix "CUP".
2. If you do not have CUP Weapons installed on your server, locate the "_crate1_weapon_list", "_crate1_item_list" and "_crate4_weapon_list" sections and remove any weapons that are prefixed with "CUP".
