// Load the data from a file
ini_open("Hnefeltafl.ini");
var _spaces_info = ini_read_string("Saved", "Spaces", "No Spaces Found");
show_debug_message("Spaces: " + _spaces_info);
var _attackers_info = ini_read_string("Saved", "Attackers", "No Attackers Found");
show_debug_message("Attackers: " + _attackers_info);
ini_close();

// Create ds maps from the data
var _spaces_map = ds_map_create();
var _attackers_map = ds_map_create();
ds_map_read(_spaces_map, _spaces_info);
ds_map_read(_attackers_map, _attackers_info);

// Move to the board and start creating it
room_goto_next()

// Set the spaces
for(var _i = 0; _i < instance_number(obj_space); _i++)
{
	var _space = instance_find(obj_space, _i);
	_space.has_piece = ds_map_find_value(_spaces_map, "has_piece" + _space.Id);
	_space.Piece = ds_map_find_value(_spaces_map, "Piece" + _space.Id);
}

// Set the attackers
for(var _i = 0; _i < instance_number(obj_attacker); _i++)
{
	var _attacker = instance_find(obj_attacker, _i);
	if(not is_undefined(ds_map_find_value(_attackers_map, "Id" + _attacker.Id)))
	{
		_attacker.Space = ds_map_find_value(_attackers_map, "Space" + _attacker.Id);
		_attacker.x = ds_map_find_value(_attackers_map, "X" + _attacker.Id);
		_attacker.y = ds_map_find_value(_attackers_map, "Y" + _attacker.Id);
		_attacker.selected = ds_map_find_value(_attackers_map, "Selected" + _attacker.Id);
		_attacker.spaces = ds_map_find_value(_attackers_map, "Spaces" + _attacker.Id);
	}
	else
	{
		instance_destroy(_attacker);
	}
}