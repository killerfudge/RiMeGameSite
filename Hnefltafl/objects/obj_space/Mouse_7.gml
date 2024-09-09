// If there is a selected piece that can move there
if(selected)
{
	var _piece; // variable to hold the piece that is moving
	var _piece_type
	// Check the pieces of whose turn it is
	if(obj_game.turn == "Attackers")
	{
		_piece_type = obj_attacker;
		// Find the selected attacker object
		for (var _i = 0; _i < instance_number(obj_attacker); _i++)
		{
			if(instance_find(obj_attacker, _i).selected)
			{
				_piece = instance_find(obj_attacker, _i);
				break;
			}
		}
		obj_game.turn = "Defenders";
	}
	else
	{
		if(instance_find(obj_king, 0).selected)
		{
			if(Row == "A" and Column == 1) 
			{
				obj_game.turn = "The King Escaped!";
				exit;
			}
			else if(Row == "A" and Column == 11) 
			{
				obj_game.turn = "The King Escaped!";
				exit;
			}
			else if(Row == "K" and Column == 1) 
			{
				obj_game.turn = "The King Escaped!";
				exit;
			}
			else if(Row == "K" and Column == 11) 
			{
				obj_game.turn = "The King Escaped!";
				exit;
			}
			else
			{
				_piece_type = obj_king;
				_piece = instance_find(obj_king, 0);
				obj_game.turn = "Attackers";
			}
		}
		else
		{
			_piece_type = obj_defender;
			// Find the selected defender object
			for (var _i = 0; _i < instance_number(obj_defender); _i++)
			{
				if(instance_find(obj_defender, _i).selected)
				{
					_piece = instance_find(obj_defender, _i);
					break;
				}
			}
			obj_game.turn = "Attackers";
		}
	}
	// The king starts on the Throne, but thereafter the space is not available
	if not (_piece.Space.Row == "F" and _piece.Space.Column == 6)
	{
		_piece.Space.has_piece = false; // Mark the now empty space as empty
	}
	_piece.Space.Piece = obj_game;
	_piece.Space = self; // Move the piece to the clicked on space
	has_piece = true; // Mark the now filled space as occupied.
	Piece = _piece;
	_piece.x = self.x + 20;
	_piece.y = self.y + 60;
	for(var _space = 0; _space < array_length(_piece.spaces); _space++)
	{
		_piece.spaces[_space].selected = false;
		_piece.spaces[_space].image_blend = _piece.spaces[_space].base_color;
	}
	while(0 < array_length(_piece.spaces))
	{
		array_pop(_piece.spaces);
	}
	_piece.selected = false;
	_piece.image_blend = base_color;  // Remove the green tint
	
	// Check to see if a piece has been captured
	var _king_capture = false;
	if(Column > 2)
	{
		var _partner_ready = false;
		var _one_away;
		var _hazard = false;
		// Find the space two away on the left from the piece that moved
		for (var _i = 0; _i < instance_number(obj_space); _i++)
		{
			var _space = instance_find(obj_space, _i);
			if(_space.Column == Column - 2 and _space.Row == Row)
			{
				if(_space.Column == 6 and _space.Row == "F")
				{
					var _king = instance_find(obj_king, 0);
					if !(_king.Space.Column == 6 and _king.Space.Row == "F")
					{
						_hazard = true;
					}
				}
				else if(_space.Column == 1 and _space.Row == "A")
				{
					_hazard = true;
				}
				else if(_space.Column == 11 and _space.Row == "A")
				{
					_hazard = true;
				}
				else if(_space.Column == 1 and _space.Row == "K")
				{
					_hazard = true;
				}
				else if(_space.Column == 11 and _space.Row == "K")
				{
					_hazard = true;
				}
				else
				{
					if(_space.has_piece)
					{
						if(_space.Piece.object_index == _piece_type)
						{
							_partner_ready = true;
						}
						else if(_piece_type == obj_king and _space.Piece.object_index == obj_defender)
						{
							_partner_ready = true;
						}
						else if(_piece_type == obj_defender and _space.Piece.object_index == obj_king)
						{
							_partner_ready = true;
						}
					}
				}
				break;
			}
		}
		if(_hazard or _partner_ready)
		{
			// Find the space beside the space the piece moved to
			for (var _i = 0; _i < instance_number(obj_space); _i++)
			{
				var _space = instance_find(obj_space, _i)
				if(_space.Column == Column - 1 and _space.Row == Row)
				{
					_one_away = _space;
					break;
				}
			}
			if(_one_away.has_piece and !(_one_away.Piece.object_index == _piece_type))
			{
				// Attacker is taking a defender
				if(_one_away.Piece.object_index == obj_defender and _piece_type == obj_attacker)
				{
					instance_destroy(_one_away.Piece);
					_one_away.Piece = obj_game;
					_one_away.has_piece = false;
				}
				// Defender or king is taking an attacker
				else if(_one_away.Piece.object_index == obj_attacker and (_piece_type == obj_defender or _piece_type == obj_king))
				{
					instance_destroy(_one_away.Piece);
					_one_away.Piece = obj_game;
					_one_away.has_piece = false;
				}
				// Attacker is attempting to take the king
				else if(_one_away.Piece.object_index == obj_king and _piece_type == obj_attacker)
				{
					_king_capture = true;
				}
			}
		}
	}
	if(Column < 10)
	{
		var _partner_ready = false;
		var _one_away;
		var _hazard = false;
		// Find the space two away on the right from the piece that moved
		for (var _i = 0; _i < instance_number(obj_space); _i++)
		{
			var _space = instance_find(obj_space, _i)
			if(_space.Column == Column + 2 && _space.Row == Row)
			{
				if(_space.Column == 6 and _space.Row == "F")
				{
					var _king = instance_find(obj_king, 0);
					if !(_king.Space.Column == 6 and _king.Space.Row == "F")
					{
						_hazard = true;
					}
				}
				else if(_space.Column == 1 and _space.Row == "A")
				{
					_hazard = true;
				}
				else if(_space.Column == 11 and _space.Row == "A")
				{
					_hazard = true;
				}
				else if(_space.Column == 1 and _space.Row == "K")
				{
					_hazard = true;
				}
				else if(_space.Column == 11 and _space.Row == "K")
				{
					_hazard = true;
				}
				else
				{
					if(_space.has_piece)
					{
						if(_space.Piece.object_index == _piece_type)
						{
							_partner_ready = true;
						}
						else if(_piece_type == obj_king and _space.Piece.object_index == obj_defender)
						{
							_partner_ready = true;
						}
						else if(_piece_type == obj_defender and _space.Piece.object_index == obj_king)
						{
							_partner_ready = true;
						}
					}
				}
				break;
			}
		}
		if(_hazard or _partner_ready)
		{
			// Find the space beside the space the piece moved to
			for (var _i = 0; _i < instance_number(obj_space); _i++)
			{
				var _space = instance_find(obj_space, _i)
				if(_space.Column == Column + 1 && _space.Row == Row)
				{
					_one_away = _space;
					break;
				}
			}
			if(_one_away.has_piece and !(_one_away.Piece.object_index == _piece_type))
			{
				// Attacker is taking a defender
				if(_one_away.Piece.object_index == obj_defender and _piece_type == obj_attacker)
				{
					instance_destroy(_one_away.Piece);
					_one_away.Piece = obj_game;
					_one_away.has_piece = false;
				}
				// Defender or king is taking an attacker
				else if(_one_away.Piece.object_index == obj_attacker and (_piece_type == obj_defender or _piece_type == obj_king))
				{
					instance_destroy(_one_away.Piece);
					_one_away.Piece = obj_game;
					_one_away.has_piece = false;
				}
				// Attacker is attempting to take the king
				else if(_one_away.Piece.object_index == obj_king and _piece_type == obj_attacker)
				{
					_king_capture = true;
				}
			}
		}
	}
	var _row = 0;
	if (Row == "B") {_row = 1;}
	else if (Row == "C") {_row = 2;}
	else if (Row == "D") {_row = 3;}
	else if (Row == "E") {_row = 4;}
	else if (Row == "F") {_row = 5;}
	else if (Row == "G") {_row = 6;}
	else if (Row == "H") {_row = 7;}
	else if (Row == "I") {_row = 8;}
	else if (Row == "J") {_row = 9;}
	else if (Row == "K") {_row = 10;}
	if(_row < 9)
	{
		var _partner_ready = false;
		var _one_away;
		var _hazard = false;
		// Find the space two above the piece that moved
		for (var _i = 0; _i < instance_number(obj_space); _i++)
		{
			var _space = instance_find(obj_space, _i)
			var _away_row = 0;
			if (_space.Row == "B") {_away_row = 1;}
			else if (_space.Row == "C") {_away_row = 2;}
			else if (_space.Row == "D") {_away_row = 3;}
			else if (_space.Row == "E") {_away_row = 4;}
			else if (_space.Row == "F") {_away_row = 5;}
			else if (_space.Row == "G") {_away_row = 6;}
			else if (_space.Row == "H") {_away_row = 7;}
			else if (_space.Row == "I") {_away_row = 8;}
			else if (_space.Row == "J") {_away_row = 9;}
			else if (_space.Row == "K") {_away_row = 10;}
			if(_space.Column == Column and _away_row + 2 == _row)
			{
				if(_space.Column == 6 and _space.Row == "F")
				{
					var _king = instance_find(obj_king, 0);
					if !(_king.Space.Column == 6 and _king.Space.Row == "F")
					{
						_hazard = true;
					}
				}
				else if(_space.Column == 1 and _space.Row == "A")
				{
					_hazard = true;
				}
				else if(_space.Column == 11 and _space.Row == "A")
				{
					_hazard = true;
				}
				else if(_space.Column == 1 and _space.Row == "K")
				{
					_hazard = true;
				}
				else if(_space.Column == 11 and _space.Row == "K")
				{
					_hazard = true;
				}
				else
				{
					if(_space.has_piece)
					{
						if(_space.Piece.object_index == _piece_type)
						{
							_partner_ready = true;
						}
						else if(_piece_type == obj_king and _space.Piece.object_index == obj_defender)
						{
							_partner_ready = true;
						}
						else if(_piece_type == obj_defender and _space.Piece.object_index == obj_king)
						{
							_partner_ready = true;
						}
					}
				}
				break;
			}
		}
		if(_hazard or _partner_ready)
		{
			// Find the space above the space the piece moved to
			for (var _i = 0; _i < instance_number(obj_space); _i++)
			{
				var _space = instance_find(obj_space, _i)
				var _away_row = 0;
				if (_space.Row == "B") {_away_row = 1;}
				else if (_space.Row == "C") {_away_row = 2;}
				else if (_space.Row == "D") {_away_row = 3;}
				else if (_space.Row == "E") {_away_row = 4;}
				else if (_space.Row == "F") {_away_row = 5;}
				else if (_space.Row == "G") {_away_row = 6;}
				else if (_space.Row == "H") {_away_row = 7;}
				else if (_space.Row == "I") {_away_row = 8;}
				else if (_space.Row == "J") {_away_row = 9;}
				else if (_space.Row == "K") {_away_row = 10;}
				if(_space.Column == Column and _away_row + 1 == _row)
				{
					_one_away = _space;
					break;
				}
			}
			if(_one_away.has_piece and !(_one_away.Piece.object_index == _piece_type))
			{
				// Attacker is taking a defender
				if(_one_away.Piece.object_index == obj_defender and _piece_type == obj_attacker)
				{
					instance_destroy(_one_away.Piece);
					_one_away.Piece = obj_game;
					_one_away.has_piece = false;
				}
				// Defender is taking an attacker
				else if(_one_away.Piece.object_index == obj_attacker and (_piece_type == obj_defender or _piece_type == obj_king))
				{
					instance_destroy(_one_away.Piece);
					_one_away.Piece = obj_game;
					_one_away.has_piece = false;
				}
				// Attacker is attempting to take the king
				else if(_one_away.Piece.object_index == obj_king and _piece_type == obj_attacker)
				{
					_king_capture = true;
				}
			}
		}
	}
	if(_row > 1)
	{
		var _partner_ready = false;
		var _one_away;
		var _hazard = false;
		// Find the space two below the piece that moved
		for (var _i = 0; _i < instance_number(obj_space); _i++)
		{
			var _space = instance_find(obj_space, _i)
			var _away_row = 0;
			if (_space.Row == "B") {_away_row = 1;}
			else if (_space.Row == "C") {_away_row = 2;}
			else if (_space.Row == "D") {_away_row = 3;}
			else if (_space.Row == "E") {_away_row = 4;}
			else if (_space.Row == "F") {_away_row = 5;}
			else if (_space.Row == "G") {_away_row = 6;}
			else if (_space.Row == "H") {_away_row = 7;}
			else if (_space.Row == "I") {_away_row = 8;}
			else if (_space.Row == "J") {_away_row = 9;}
			else if (_space.Row == "K") {_away_row = 10;}
			if(_space.Column == Column and _away_row - 2 == _row)
			{
				if(_space.Column == 6 and _space.Row == "F")
				{
					var _king = instance_find(obj_king, 0);
					if !(_king.Space.Column == 6 and _king.Space.Row == "F")
					{
						_hazard = true;
					}
				}
				else if(_space.Column == 1 and _space.Row == "A")
				{
					_hazard = true;
				}
				else if(_space.Column == 11 and _space.Row == "A")
				{
					_hazard = true;
				}
				else if(_space.Column == 1 and _space.Row == "K")
				{
					_hazard = true;
				}
				else if(_space.Column == 11 and _space.Row == "K")
				{
					_hazard = true;
				}
				else
				{
					if(_space.has_piece)
					{
						if(_space.Piece.object_index == _piece_type)
						{
							_partner_ready = true;
						}
						else if(_piece_type == obj_king and _space.Piece.object_index == obj_defender)
						{
							_partner_ready = true;
						}
						else if(_piece_type == obj_defender and _space.Piece.object_index == obj_king)
						{
							_partner_ready = true;
						}
					}
				}
				break;
			}
		}
		if(_hazard or _partner_ready)
		{
			// Find the space below the space the piece moved to
			for (var _i = 0; _i < instance_number(obj_space); _i++)
			{
				var _space = instance_find(obj_space, _i)
				var _away_row = 0;
				if (_space.Row == "B") {_away_row = 1;}
				else if (_space.Row == "C") {_away_row = 2;}
				else if (_space.Row == "D") {_away_row = 3;}
				else if (_space.Row == "E") {_away_row = 4;}
				else if (_space.Row == "F") {_away_row = 5;}
				else if (_space.Row == "G") {_away_row = 6;}
				else if (_space.Row == "H") {_away_row = 7;}
				else if (_space.Row == "I") {_away_row = 8;}
				else if (_space.Row == "J") {_away_row = 9;}
				else if (_space.Row == "K") {_away_row = 10;}
				if(_space.Column == Column and _away_row - 1 == _row)
				{
					_one_away = _space;
					break;
				}
			}
			show_debug_message(_one_away.has_piece);
			show_debug_message(_one_away.Piece.object_index == _piece_type);
			if(_one_away.has_piece and !(_one_away.Piece.object_index == _piece_type))
			{
				// Attacker is taking a defender
				if(_one_away.Piece.object_index == obj_defender and _piece_type == obj_attacker)
				{
					instance_destroy(_one_away.Piece);
					_one_away.Piece = obj_game;
					_one_away.has_piece = false;
				}
				// Defender or king is taking an attacker
				else if(_one_away.Piece.object_index == obj_attacker and (_piece_type == obj_defender or _piece_type == obj_king))
				{
					instance_destroy(_one_away.Piece);
					_one_away.Piece = obj_game;
					_one_away.has_piece = false;
				}
				// Attacker is attempting to take the king
				else if(_one_away.Piece.object_index == obj_king and _piece_type == obj_attacker)
				{
					_king_capture = true;
				}
			}
		}
	}
	
	// Check to see if the King was successfully captured
	if(Row == "B")
	{
		for (var _i = 0; _i < instance_number(obj_space); _i++)
		{
			var _space = instance_find(obj_space, _i);
			if(_space.Row == "A" and _space.Column == Column)
			{
				_king_capture = true;
			}
		}
	}
	else if(Row == "J")
	{
		for (var _i = 0; _i < instance_number(obj_space); _i++)
		{
			var _space = instance_find(obj_space, _i);
			if(_space.Row == "K" and _space.Column == Column)
			{
				_king_capture = true;
			}
		}
	}
	else if(Column == 2)
	{
		for (var _i = 0; _i < instance_number(obj_space); _i++)
		{
			var _space = instance_find(obj_space, _i);
			if(_space.Row == Row and _space.Column == 1)
			{
				_king_capture = true;
			}
		}
	}
	else if(Column == 10)
	{
		for (var _i = 0; _i < instance_number(obj_space); _i++)
		{
			var _space = instance_find(obj_space, _i);
			if(_space.Row == Row and _space.Column == 11)
			{
				_king_capture = true;
			}
		}
	}
	if(_king_capture)
	{
		var _kings_space = instance_find(obj_king, 0).Space
		var _enemies = 0
		var _kings_row = 0;
		if (_kings_space.Row == "B") {_kings_row = 1;}
		else if (_kings_space.Row == "C") {_kings_row = 2;}
		else if (_kings_space.Row == "D") {_kings_row = 3;}
		else if (_kings_space.Row == "E") {_kings_row = 4;}
		else if (_kings_space.Row == "F") {_kings_row = 5;}
		else if (_kings_space.Row == "G") {_kings_row = 6;}
		else if (_kings_space.Row == "H") {_kings_row = 7;}
		else if (_kings_space.Row == "I") {_kings_row = 8;}
		else if (_kings_space.Row == "J") {_kings_row = 9;}
		else if (_kings_space.Row == "K") {_kings_row = 10;}
		// The King is on the top row
		if(_kings_space.Row == "A")
		{
			// Find the spaces around the king
			for (var _i = 0; _i < instance_number(obj_space); _i++)
			{
				var _space = instance_find(obj_space, _i)
				if(_space.Column == _kings_space.Column and _space.Row == "B")
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
				else if(_space.Column == _kings_space.Column - 1 and _space.Row == "A")
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
				else if(_space.Column == _kings_space.Column + 1 and _space.Row == "A")
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
			}
			if(_enemies == 3) {obj_game.turn = "The King was captured!";}
		}
		// The King is on the bottom row
		else if(_kings_space.Row == "K")
		{
			// Find the spaces around the king
			for (var _i = 0; _i < instance_number(obj_space); _i++)
			{
				var _space = instance_find(obj_space, _i)
				if(_space.Column == _kings_space.Column and _space.Row == "J")
				{
					show_debug_message("Found piece above.");
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
						show_debug_message(_enemies);
					}
				}
				else if(_space.Column == _kings_space.Column - 1 and _space.Row == "K")
				{
					show_debug_message("Found piece to the left.");
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
						show_debug_message(_enemies);
					}
				}
				else if(_space.Column == _kings_space.Column + 1 and _space.Row == "K")
				{
					show_debug_message("Found piece to the right.");
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
						show_debug_message(_enemies);
					}
				}
			}
			if(_enemies == 3) {obj_game.turn = "The King was captured!";}
		}
		// The King is on the left column
		else if(_kings_space.Column == 1)
		{
			// Find the spaces around the king
			for (var _i = 0; _i < instance_number(obj_space); _i++)
			{
				var _space = instance_find(obj_space, _i)
				var _space_row = 0;
				if (_space.Row == "B") {_space_row = 1;}
				else if (_space.Row == "C") {_space_row = 2;}
				else if (_space.Row == "D") {_space_row = 3;}
				else if (_space.Row == "E") {_space_row = 4;}
				else if (_space.Row == "F") {_space_row = 5;}
				else if (_space.Row == "G") {_space_row = 6;}
				else if (_space.Row == "H") {_space_row = 7;}
				else if (_space.Row == "I") {_space_row = 8;}
				else if (_space.Row == "J") {_space_row = 9;}
				else if (_space.Row == "K") {_space_row = 10;}
				if(_space.Column == 2 and _kings_row == _space_row)
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
				else if(_space.Column == 1 and _space_row == _kings_row + 1)
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
				else if(_space.Column == 1 and _space_row == _kings_row - 1)
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
			}
			if(_enemies == 3) {obj_game.turn = "The King was captured!";}
		}
		// The King is on the right column
		else if(_kings_space.Column == 11)
		{
			// Find the spaces around the king
			for (var _i = 0; _i < instance_number(obj_space); _i++)
			{
				var _space = instance_find(obj_space, _i)
				var _space_row = 0;
				if (_space.Row == "B") {_space_row = 1;}
				else if (_space.Row == "C") {_space_row = 2;}
				else if (_space.Row == "D") {_space_row = 3;}
				else if (_space.Row == "E") {_space_row = 4;}
				else if (_space.Row == "F") {_space_row = 5;}
				else if (_space.Row == "G") {_space_row = 6;}
				else if (_space.Row == "H") {_space_row = 7;}
				else if (_space.Row == "I") {_space_row = 8;}
				else if (_space.Row == "J") {_space_row = 9;}
				else if (_space.Row == "K") {_space_row = 10;}
				if(_space.Column == 10 and _kings_row == _space_row)
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
				else if(_space.Column == 11 and _space_row == _kings_row + 1)
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
				else if(_space.Column == 11 and _space_row == _kings_row - 1)
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
			}
			if(_enemies == 3) {obj_game.turn = "The King was captured!";}
		}
		else
		{
			// Find the spaces around the king
			for (var _i = 0; _i < instance_number(obj_space); _i++)
			{
				var _space = instance_find(obj_space, _i)
				var _space_row = 0;
				if (_space.Row == "B") {_space_row = 1;}
				else if (_space.Row == "C") {_space_row = 2;}
				else if (_space.Row == "D") {_space_row = 3;}
				else if (_space.Row == "E") {_space_row = 4;}
				else if (_space.Row == "F") {_space_row = 5;}
				else if (_space.Row == "G") {_space_row = 6;}
				else if (_space.Row == "H") {_space_row = 7;}
				else if (_space.Row == "I") {_space_row = 8;}
				else if (_space.Row == "J") {_space_row = 9;}
				else if (_space.Row == "K") {_space_row = 10;}
				if(_space.Column == Column - 1 and _kings_row == _space_row)
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
				if(_space.Column == Column + 1 and _kings_row == _space_row)
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
				if(_space.Column == Column and _kings_row + 1 == _space_row)
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
				if(_space.Column == Column and _kings_row - 1 == _space_row)
				{
					if(_space.Piece.object_index == obj_attacker)
					{
						_enemies++;
					}
				}
			}
			if(_enemies == 4) {obj_game.turn = "The King was captured!";}
		}
	}
}