// If the player has crafted an item, start the text by saying it was crafted
if (global.item != "")
{
	text = "You successfully crafted a " + global.item + "\n";
}
// If the player has materials to craft, tell them what they have
if (struct_names_count(global.player_materials) > 0)
{
	// get the names of all materials the player has
	var _material_names = struct_get_names(global.player_materials);

	// create display list of possessed materials
	text = "You have ";
	for (i = 0; i < array_length(_material_names); i++)
	{
		text += string(struct_get(global.player_materials, _material_names[i]));
		text += " ";
		text += _material_names[i];
		text += " ";
	}
	
	// set booleans to show what materials the player has so functions don't have to
	// repeatedly be called
	var _rocks = struct_exists(global.player_materials, "rocks");
	var _vines = struct_exists(global.player_materials, "vines");
	var _sticks = struct_exists(global.player_materials, "sticks");
	
	// booleans for tools
	var _knife = struct_exists(global.player_tools, "knife");
	var _hammer = struct_exists(global.player_tools, "hammer");
	
	// booleans for weapons
	var _bow = struct_exists(global.player_weapons, "bow");
	
	// list out crafting options for player
	var _options = 1;
	if (_rocks and not _knife)
	{
		create_button(_options, "craft stone knife", "crafting");
		_options += 1;
	}
	if (_rocks and _sticks and _vines and not _hammer)
	{
		create_button(_options, "craft hammer", "crafting");
		_options += 1;
	}
	if (_sticks and _vines and _knife and not _bow)
	{
		create_button(_options, "craft bow", "crafting");
		_options += 1;
	}
	if (_sticks and _bow)
	{
		create_button(_options, "craft arrow", "crafting");
		_options += 1;
	}
	create_button(_options, "finish crafting", "crafting");
}
// If the player doesn't have materials, notify them
else
{
	text = "You don't have any crafting materials.";
	create_button(1, "finish crafting", "crafting");
}