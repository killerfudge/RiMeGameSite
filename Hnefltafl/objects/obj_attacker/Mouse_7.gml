// If the piece clicked on is not already selected
if (not selected && obj_game.turn == "Attackers")
{
	// Find all of the attacker objects
	var _attackers = [];
	for (var _i = 0; _i < instance_number(obj_attacker); _i++)
	{
		_attackers[_i] = instance_find(obj_attacker, _i);
	}
	// See if any other attackers are selected and exit event if so
	for (var _attacker = 0; _attacker < array_length(_attackers); _attacker++)
	{
		if (_attackers[_attacker].selected)
		{
			exit;
		}
	}
	image_blend = c_green;  // tint sprite green
	// Create an array with all of the spaces
	var _spaces = [];
	for (var _i = 0; _i < instance_number(obj_space); _i++)
	{
		_spaces[_i] = instance_find(obj_space, _i);
	}
	// Find the spaces in the selected piece's row
	var _row = [];
	for (var _i = 0; _i < array_length(_spaces); _i++)
	{
		if (variable_instance_get(_spaces[_i], "Row") == Space.Row)
		{
			array_push(_row, _spaces[_i]);
		}
	}
	array_sort(_row, function(_elm1, _elm2)
	{
		if(variable_instance_get(_elm1, "Column") > variable_instance_get(_elm2, "Column"))
		{
			return 1;
		}
		else
		{
			return -1;
		}
	});
	// Find the spaces in the selected piece's column
	var _column = [];
	for (var _i = 0; _i < array_length(_spaces); _i++)
	{
		if (variable_instance_get(_spaces[_i], "Column") == Space.Column)
		{
			array_push(_column, _spaces[_i]);
		}
	}
	array_sort(_column,function(_elm1, _elm2)
	{
		if(variable_instance_get(_elm1, "Row") > variable_instance_get(_elm2, "Row"))
		{
			return 1;
		}
		else
		{
			return -1;
		}
	});
	// Turn all of the spaces the selected piece can move to the left green
	for(var _space = Space.Column - 2; _space >= 0; _space--)
	{
		if((Space.Row == "A" or Space.Row == "K") and _space == 0)
		{
			break;
		}
		else if !(_row[_space].has_piece)
		{
			_row[_space].image_blend = c_green;
			_row[_space].selected = true;
			array_push(spaces, _row[_space]);  // Store the space so it can be reset later
		}
		else
		{
			break;
		}
	}
	// Turn all of the spaces the selected piece can move to the right green
	for(var _space = Space.Column; _space < array_length(_row); _space++)
	{
		if((Space.Row == "A" or Space.Row == "K") and _space == array_length(_row) - 1)
		{
			break;
		}
		else if !(_row[_space].has_piece)
		{
			_row[_space].image_blend = c_green;
			_row[_space].selected = true;
			array_push(spaces, _row[_space]);  // Store the space so it can be reset later
		}
		else
		{
			break;
		}
	}
	var _true_row = 0;
	if (Space.Row == "B") {_true_row = 1;}
	else if (Space.Row == "C") {_true_row = 2;}
	else if (Space.Row == "D") {_true_row = 3;}
	else if (Space.Row == "E") {_true_row = 4;}
	else if (Space.Row == "F") {_true_row = 5;}
	else if (Space.Row == "G") {_true_row = 6;}
	else if (Space.Row == "H") {_true_row = 7;}
	else if (Space.Row == "I") {_true_row = 8;}
	else if (Space.Row == "J") {_true_row = 9;}
	else if (Space.Row == "K") {_true_row = 10;}
	// Turn all of the spaces the selected piece can move up to green
	for(var _space = _true_row - 1; _space >= 0; _space--)
	{
		if((Space.Column == 1 or Space.Column == 11) and _space == 0)
		{
			break;
		}
		else if!(_column[_space].has_piece)
		{
			_column[_space].image_blend = c_green;
			_column[_space].selected = true;
			array_push(spaces, _column[_space]);  // Store the space so it can be reset later
		}
		else
		{
			break;
		}
	}
	// Turn all of the spaces the selected piece can move down to green
	for(var _space = _true_row + 1; _space < array_length(_column); _space++)
	{
		if((Space.Column == 1 or Space.Column == 11) and _space == array_length(_column) - 1)
		{
			break;
		}
		else if !(_column[_space].has_piece)
		{
			_column[_space].image_blend = c_green;
			_column[_space].selected = true;
			array_push(spaces, _column[_space]);  // Store the space so it can be reset later
		}
		else
		{
			break;
		}
	}
	selected = true;  // Mark the piece as selected
}
// If the piece clicked on is already selected, deselect it and revert everything
else if(obj_game.turn == "Attackers")
{
	image_blend = base_color;  // Remove the green tint
	for(var _space = 0; _space < array_length(spaces); _space++)
	{
		spaces[_space].selected = false;
		spaces[_space].image_blend = spaces[_space].base_color;
	}
	while(0 < array_length(spaces))
	{
		array_pop(spaces);
	}
	selected = false;
}