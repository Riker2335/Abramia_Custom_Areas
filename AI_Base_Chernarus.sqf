/*
	"Ai Base" v1.0 DMS static mission for Chernarus.
	Created by Riker using templates by eraser1 with mission code layout and features inspired by mission files from [CiC]red_ned.
	
	This is intended to be a mission completed by a team of and has serious rewards for completing it, especially at the high end.
	Base design and location was inspired by an old ARMA 2 Overpoch server run by B-Zerk. To B-Zerk (if you ever see this) Thanks for the good times!
*/

private ["_pos", "_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_crate1", "_crate2", "_crate_loot_values0", "_crate_loot_values1", "_crate_loot_values2", "_crate_loot_values3", "_crate_weapons0", "_crate_weapons1", "_crate_weapons2", "_crate_weapons3", "_crate_items0", "_crate_items1", "_crate_items2", "_crate_items3", "_crate_backpacks0", "_crate_backpacks1", "_crate_backpacks2", "_crate_backpacks3", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_veh", "_veh1", "_veh_2", "_Med_Crate_Item_List"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [14167,6571,0];

if ([_pos,DMS_StaticMinPlayerDistance] call DMS_fnc_IsPlayerNearby) exitWith {"delay"};

//create possible difficulty add more of one difficulty to weight it towards that. If testing, comment this section out and uncomment the forced easy mode
/*
_PossibleDifficulty		= 	[	
								"moderate",
								"difficult",
								"difficult",
								"hardcore",
								"hardcore",
								"hardcore"
							];
//choose mission difficulty and set value and is also marker colour
_difficultyM = selectRandom _PossibleDifficulty;
*/

// FOR TESTING ONLY, SETS DIFFICULTY TO EASY WITH MINIMAL AI
_difficultyM = "easy";


switch (_difficultyM) do
{
	case "easy":	//Used for TESTING purposes only, this is WAY too easy.
	{
_difficulty = "easy";									//AI difficulty
_AICount = (3 + (round (random 5)));					//AI starting numbers
_AIMaxReinforcements = (10 + (round (random 5)));		//AI reinforcement cap
_AItrigger = (2 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax
_AIwave = (4 + (round (random 4)));						//Max amount of AI in reinforcement wave
_AIdelay = (55 + (round (random 120)));					//The delay between reinforcements
_crate_weapons0 	= (5 + (round (random 20)));		//Crate 0 weapons number
_crate_items0 		= (5 + (round (random 20)));		//Crate 0 items number
_crate_backpacks0 	= (3 + (round (random 1)));			//Crate 0 back packs number
_crate_weapons1 	= (4 + (round (random 2)));			//Crate 1 weapons number
_crate_items1 		= (10 + (round (random 40)));		//Crate 1 items number
_crate_backpacks1 	= (1 + (round (random 8)));			//Crate 1 back packs number
_crate_weapons2 	= (1 + (round (random 1)));
_crate_items2		= (10 + (round (random 10)));
_crate_backpacks2 	= (1 + (round (random 1)));
_crate_weapons3		= (1 + (round (random 1)));
_crate_items3	 	= (10 + (round (random 10)));
_crate_backpacks3	= (1 + (round (random 1)));
	};
	case "moderate":
	{
_difficulty = "moderate";
_AICount = (20 + (round (random 5))); 
_AIMaxReinforcements = (20 + (round (random 20)));
_AItrigger = (10 + (round (random 10)));
_AIwave = (5 + (round (random 3)));
_AIdelay = (55 + (round (random 120)));
_crate_weapons0 	= (15 + (round (random 15)));
_crate_items0 		= (10 + (round (random 15)));
_crate_backpacks0 	= (3 + (round (random 1)));
_crate_weapons1 	= (6 + (round (random 3)));
_crate_items1 		= (30 + (round (random 30)));
_crate_backpacks1 	= (5 + (round (random 4)));
_crate_weapons2 	= (1 + (round (random 1)));
_crate_items2		= (30 + (round (random 10)));
_crate_backpacks2 	= (1 + (round (random 1)));
_crate_weapons3		= (1 + (round (random 1)));
_crate_items3	 	= (30 + (round (random 10)));
_crate_backpacks3	= (1 + (round (random 1)));
	};
	case "difficult":
	{
_difficulty = "difficult";
_AICount = (50 + (round (random 7)));
_AIMaxReinforcements = (30 + (round (random 20)));
_AItrigger = (10 + (round (random 10)));
_AIwave = (6 + (round (random 2)));
_AIdelay = (55 + (round (random 120)));
_crate_weapons0 	= (20 + (round (random 20)));
_crate_items0 		= (15 + (round (random 10)));
_crate_backpacks0 	= (3 + (round (random 1)));
_crate_weapons1 	= (8 + (round (random 3)));
_crate_items1 		= (30 + (round (random 20)));
_crate_backpacks1 	= (6 + (round (random 4)));
_crate_weapons2 	= (1 + (round (random 1)));
_crate_items2		= (30 + (round (random 20)));
_crate_backpacks2 	= (1 + (round (random 1)));
_crate_weapons3		= (1 + (round (random 1)));
_crate_items3	 	= (30 + (round (random 20)));
_crate_backpacks3	= (1 + (round (random 1)));
	};
	//case "hardcore":
	default
	{
_difficulty = "hardcore"; 
_AICount = (60 + (round (random 10)));
_AIMaxReinforcements = (0);
_AItrigger = (15 + (round (random 5)));
_AIwave = (6 + (round (random 2)));
_AIdelay = (55 + (round (random 120)));
_crate_weapons0 	= (30 + (round (random 15)));
_crate_items0 		= (20 + (round (random 5)));
_crate_backpacks0 	= (2 + (round (random 1)));
_crate_weapons1 	= (15 + (round (random 2)));
_crate_items1 		= (50 + (round (random 10)));
_crate_backpacks1 	= (5 + (round (random 2)));
_crate_weapons2 	= (1 + (round (random 1)));
_crate_items2		= (50 + (round (random 10)));
_crate_backpacks2 	= (1 + (round (random 1)));
_crate_weapons3		= (1 + (round (random 1)));
_crate_items3	 	= (60 + (round (random 10)));
_crate_backpacks3	= (1 + (round (random 1)));
	};
};

// Define the Speciality Crate Item Lists
_Med_Crate_Item_List	= ["Exile_Item_InstaDoc","Exile_Item_Bandage","Exile_Item_Vishpirin","Exile_Item_Bandage","Exile_Item_Vishpirin","Exile_Item_Bandage","Exile_Item_Vishpirin","Exile_Item_Bandage","Exile_Item_Vishpirin","Exile_Item_InstaDoc","Exile_Item_Bandage","Exile_Item_Vishpirin","Exile_Item_Bandage","Exile_Item_Vishpirin","Exile_Item_Bandage","Exile_Item_Vishpirin"];


// Define spawn locations for AI Soldiers. These will be used for the initial spawning of AI as well as reinforcements.
// The center spawn location is added 3 times so at least 3 AI will spawn initially at the center location, and so that future reinforcements are more likely to spawn at the center.
_AISoldierSpawnLocations =
[
	[14276.7,6425.2,0],
	[14377.0,6418.6,0],
	[14269.8,6620.9,0],
	[14281,6715,0],
	[14140.1,6684.4,0],
	[14206.4,6684.2,0],
	[14178,6749,0],
	[14101.8,6593.7,0],
	[14146.3,6592.1,0],
	[14147.9,6525.5,0],
	[14148.6,6437.4,0],
	[14221.5,6573.3,0]
];

_group =
[
	_AISoldierSpawnLocations,			// Pass the regular spawn locations as well as the center pos 3x
	_AICount,											// Set in difficulty select
	_difficulty,										// Set in difficulty select
	"random",
	_side
] call DMS_fnc_SpawnAIGroup_MultiPos;

_staticGuns =
[
	[
		[14107.929,6689.8101,0],	
		[14173.845,6670.0278,0],		
		[14243.667,6618.2612,0],
		[14280.05,6592,0],
		[14123.691,6565.0024,0],
		[14403.933,6444.3945,0],
		[14356.477,6439.3281,0],
		[14362.173,6439.0112,0],
		[14181.893,6513.0054,3.15],
		[14183.386,6466.3359,3.15],
		[14302.571,6679.8267,30],
		[14290.311,6784.5483,30]
	],
	_group,
	"assault",
	_difficulty,
	"bandit",
	"random"
] call DMS_fnc_SpawnAIStaticMG;

// This is the first AI Vehicle, an armed Vodnik! Hope you brought an RPG :)
_veh =
[
	[
		[_pos,100,random 360] call DMS_fnc_SelectOffsetPos,
		_pos
	],
	_group,
	"random",
	_difficulty,
	_side,
	"CUP_O_GAZ_Vodnik_BPPU_RU"	//Classname of the vehicle we want to spawn, use "random" if you don't care and want DMS to select something.
] call DMS_fnc_SpawnAIVehicle;

// Define the classnames and locations where the crates can spawn (at least 2, since we're spawning 2 crates)
_crateClasses_and_Positions =
[
	[[14145.6,6616.6,0],"I_CargoNet_01_ammo_F"],
	[[14142.3,6616.8,0],"I_CargoNet_01_ammo_F"],
	[[14100.6,6685.3,0],"I_CargoNet_01_ammo_F"],
	[[14359.8,6439.2,0],"I_CargoNet_01_ammo_F"]
];

{
	deleteVehicle (nearestObject _x);		// Make sure to remove any previous crates.
} forEach _crateClasses_and_Positions;

// Shuffle the list
_crateClasses_and_Positions = _crateClasses_and_Positions call ExileClient_util_array_shuffle;

// Create Crates
_crate0 = [_crateClasses_and_Positions select 0 select 1, _crateClasses_and_Positions select 0 select 0] call DMS_fnc_SpawnCrate;
_crate1 = [_crateClasses_and_Positions select 1 select 1, _crateClasses_and_Positions select 1 select 0] call DMS_fnc_SpawnCrate;
_crate2 = [_crateClasses_and_Positions select 2 select 1, _crateClasses_and_Positions select 2 select 0] call DMS_fnc_SpawnCrate;
_crate3 = [_crateClasses_and_Positions select 3 select 1, _crateClasses_and_Positions select 3 select 0] call DMS_fnc_SpawnCrate;

// Enable smoke on the crates due to size of area
{
	_x setVariable ["DMS_AllowSmoke", true];
} forEach [_crate0,_crate1,_crate2];

// Define mission-spawned AI Units
_missionAIUnits =
[
	_group 		// We only spawned the single group for this mission
];

// Define the group reinforcements
_groupReinforcementsInfo =
[
	[
		_group,			// pass the group
		[
			[
				0,		// Let's limit number of units instead...
				0
			],
			[
				_AIMaxReinforcements,	// Maximum units that can be given as reinforcements (defined in difficulty selection).
				0
			]
		],
		[
			_AIdelay,		// The delay between reinforcements. >> you can change this in difficulty settings
			diag_tickTime
		],
		_AISoldierSpawnLocations,
		"random",
		_difficulty,
		_side,
		"reinforce",
		[
			_AItrigger,		// Set in difficulty select - Reinforcements will only trigger if there's fewer than X members left
			_AIwave			// X reinforcement units per wave. >> you can change this in mission difficulty section
		]
	]
];

// setup crates with items from choices
_crate_loot_values0 =
[
	_crate_weapons0,		// Set in difficulty select - Weapons
	_crate_items0,			// Set in difficulty select - Items
	_crate_backpacks0 		// Set in difficulty select - Backpacks
];
_crate_loot_values1 =
[
	_crate_weapons1,		// Set in difficulty select - Weapons
	_crate_items1,			// Set in difficulty select - Items
	_crate_backpacks1 		// Set in difficulty select - Backpacks
];
_crate_loot_values2 =		// This is the Building Supplies Crate
[
	_crate_weapons2,		// Set in difficulty select - Weapons
	[_crate_items2,DMS_BoxBuildingSupplies],			// Set in difficulty select - Items
	_crate_backpacks2 		// Set in difficulty select - Backpacks
];
_crate_loot_values3 =		// This is the medical crate
[
	_crate_weapons3,		// Set in difficulty select - Weapons
	[_crate_items3,_Med_Crate_Item_List],			// Set in difficulty select - Items
	_crate_backpacks3 		// Set in difficulty select - Backpacks
];
// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns+[_veh],			// static gun(s) & AI Vehicles. Note, we don't add the base itself because it already spawns on server start.
	[],							// no vehicle prize, they can capture the AI vehicles on originating server
	[[_crate0,_crate_loot_values0],[_crate1,_crate_loot_values1],[_crate1,_crate_loot_values2],[_crate3,_crate_loot_values3]]
];

// Define Mission Start message
_msgStart = ['#FFFF00',format["A large group of CDF Specops have built a base and are drinking beer and eating cake",_difficultyM]];

// Define Mission Win message
_msgWIN = ['#0080ff',"Convicts have successfully killed the CDF Specops and claimed all the cake and beer for themselves!"];

// Define Mission Lose message
_msgLOSE = ['#FF0000',"The CDF Specops have finished their beer and cake and buggered off..."];

// Define mission name (for map marker and logging)
_missionName = "AI Base";

// Create Markers
_markers =
[
	_pos,
	_missionName,
	_difficultyM
] call DMS_fnc_CreateMarker;

_circle = _markers select 1;
_circle setMarkerDir 20;
_circle setMarkerSize [300,300];

_time = diag_tickTime;

// Parse and add mission info to missions monitor
_added =
[
	_pos,
	[
		[
			"kill",
			_group
		],
		[
			"playerNear",
			[_pos,100]
		]
	],
	_groupReinforcementsInfo,
	[
		_time,
		DMS_StaticMissionTimeOut call DMS_fnc_SelectRandomVal
	],
	_missionAIUnits,
	_missionObjs,
	[_missionName,_msgWIN,_msgLOSE],
	_markers,
	_side,
	_difficulty,
	[[],[]]
] call DMS_fnc_AddMissionToMonitor_Static;

// Check to see if it was added correctly, otherwise delete the stuff
if !(_added) exitWith
{
	diag_log format ["DMS ERROR :: Attempt to set up mission %1 with invalid parameters for DMS_fnc_AddMissionToMonitor_Static! Deleting mission objects and resetting DMS_MissionCount.",_missionName];

	_cleanup = [];
	{
		_cleanup pushBack _x;
	} forEach _missionAIUnits;

	_cleanup pushBack ((_missionObjs select 0)+(_missionObjs select 1));
	
	{
		_cleanup pushBack (_x select 0);
	} foreach (_missionObjs select 2);

	_cleanup call DMS_fnc_CleanUp;

	// Delete the markers directly
	{deleteMarker _x;} forEach _markers;

	// Reset the mission count
	DMS_MissionCount = DMS_MissionCount - 1;
};

// Notify players
[_missionName,_msgStart] call DMS_fnc_BroadcastMissionStatus;

if (DMS_DEBUG) then
{
	(format ["MISSION: (%1) :: Mission #%2 started at %3 with %4 AI units and %5 difficulty at time %6",_missionName,_num,_pos,_AICount,_difficulty,_time]) call DMS_fnc_DebugLog;
};
