// If the piece clicked on is not already selected
if (not selected and obj_game.turn == "Defenders")
{
	var _king = instance_find(obj_king, 0); // grab the instance of the king object
	image_blend = c_green;  // tint sprite green
	// Create an array with all of the spaces
	var _spaces = [];
	for (var _i = 0; _i < instance_number(obj_space); _i++)
	{
		_spaces[_i] = instance_find(obj_space, _i);
	}
	// Find the spaces in the king's row
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
	// Find the spaces in the king's column
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
	// Turn all of the spaces the kinge can move to the left green
	for(var _space = Space.Column - 2; _space >= 0; _space--)
	{
		if !(_row[_space].has_piece)
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
	// Turn all of the spaces the king can move to the right green
	for(var _space = Space.Column; _space < array_length(_row); _space++)
	{
		if !(_row[_space].has_piece)
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
	// Turn all of the spaces the king can move up to green
	for(var _space = _true_row - 1; _space >= 0; _space--)
	{
		if!(_column[_space].has_piece)
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
	// Turn all of the spaces the king can move down to green
	for(var _space = _true_row + 1; _space < array_length(_column); _space++)
	{
		if !(_column[_space].has_piece)
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
	selected = true;  // Mark the king as selected
}
// If the piece clicked on is already selected, deselect it and revert everything
else if(obj_game.turn == "Defenders")
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