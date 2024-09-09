var _game = ds_map_create();

// Find the spaces objects and add them to the ds map
var _spaces = ds_map_create();
for (var _i = 0; _i < instance_number(obj_space); _i++)
{
	var _space = instance_find(obj_space, _i);
	ds_map_add(_spaces, "has_piece" + _space.Id, _space.has_piece);
	ds_map_add(_spaces, "Piece" + _space.Id, _space.Piece);
}

// Find the attacker objects and add them to the ds map
var _attackers = ds_map_create();
for (var _i = 0; _i < instance_number(obj_attacker); _i++)
{
	var _attacker = instance_find(obj_attacker, _i);
	ds_map_add(_attackers, "Space" + _attacker.Id, _attacker.Space);
	ds_map_add(_attackers, "X" + _attacker.Id, _attacker.x);
	ds_map_add(_attackers, "Y" + _attacker.Id, _attacker.y);
	ds_map_add(_attackers, "Selected" + _attacker.Id, _attacker.selected);
	ds_map_add(_attackers, "Spaces" + _attacker.Id, _attacker.spaces);
}

// Find the defender objects and add them to the ds map
var _defenders = [];
for (var _i = 0; _i < instance_number(obj_defender); _i++)
{
	array_insert(_defenders, _i, instance_find(obj_defender, _i));
}
ds_map_add(_game, "Defenders", _defenders);

// Add the king and game objects to the ds map
ds_map_add(_game, "King", obj_king);
ds_map_add(_game, "Game", obj_game);

// Write the ds map to a file
ini_open("Hnefeltafl.ini");
var _spaces_info = ds_map_write(_spaces);
ini_write_string("Saved", "Spaces", _spaces_info);
var _attackers_info = ds_map_write(_attackers);
ini_write_string("Saved", "Attackers", _attackers_info);
ini_close();