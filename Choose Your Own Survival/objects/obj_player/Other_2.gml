global.character = "doctor";
global.player_health = 10;
global.player_wounds = [];
global.player_hunger = 10;
global.player_thirst = 10;

// Define structs for holding variables that come and go through the game
global.player_tools = {};
global.player_weapons = {};
global.player_materials = {};

// Player position variables. Letters for row are converted to a number
// starting with A->1 to make movement calculations easier.
global.player_position = ""
global.player_row = 1
global.player_column = 10