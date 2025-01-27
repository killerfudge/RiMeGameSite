// Selection on the start menu to start new game
if (text == "New Game")
{
	global.selection = "New Game"
	room_goto_next()
}
// Selection in the 'Crash' room at the start of the game which will set starting position
else if (text == "Escape through the front window")
{
	global.selection = "Front Window"
	global.player_position = "A11"
	global.direction_selection = "Front side"
	global.player_row = 1
	global.player_column = 11
	global.camp_row = 1
	global.camp_column = 11
	room_goto(1)
}
// Selection in the 'Crash' room at the start of the game which will set starting position
else if (text == "Escape through the back emergency door")
{
	global.selection = "Back Door"
	global.player_position = "A10"
	global.player_row = 1
	global.player_column = 10
	global.camp_row = 1
	global.camp_column = 10
	room_goto(1)
}
// This is currently here to skip what will be story stuff after escaping the bus
else if (text == "Skip to move")
{
	global.selection = "Enter map square"
	room_goto(1)
}
// Look for material for crafting
else if (text == "Scavange for materials")
{
	var _found = irandom(10);
	if (_found == 1)
	{
		if (struct_exists(global.player_materials, "sticks"))
		{
			global.player_materials.sticks += 1;
		}
		else
		{
			global.player_materials.sticks = 1;
		}
		global.item = "stick";
	}
	else if (_found == 2)
	{
		if (struct_exists(global.player_materials, "rocks"))
		{
			global.player_materials.rocks += 1;
		}
		else
		{
			global.player_materials.rocks = 1;
		}
		global.item = "rock";
	}
	else if (_found == 3)
	{
		if (struct_exists(global.player_materials, "vines"))
		{
			global.player_materials.vines += 1;
		}
		else
		{
			global.player_materials.vines = 1;
		}
		global.item = "vine";
	}
	else
	{
		global.item = "nothing";
	}
	progress_time(10, "minutes");
	global.selection = "Scavenged item";
	room_goto(1);
}
// Switch to menu for leaving a map square
else if (text == "Leave area")
{
	global.selection = "Move map square";
	room_goto(1);
}
// Selection for when moving north between sections on the map
else if (text == "Go north")
{
	// Check for movements that lead to squares with multiple sides
	var _row = global.player_row;
	var _column = global.player_column;
	// C11, C14, and D10, from the side of the square that is near where the bus crash ends up
	if ((_row == 3 and (_column == 11 or _column == 14)) or (_row == 4 and _column == 10))
	{
		global.direction_selection = "Crash side";
	}
	// H13, J12, and L15
	else if ((_row == 8 and _column == 13) or (_row == 10 and _column == 12) or (_row == 12 and _column == 15))
	{
		global.direction_selection = "South side";
	}
	
	// North is up, so a lower row number
	global.player_row -= 1;
	global.selection = "Enter map square";
	
	// Convert position to the string used by other systems
	if (global.player_row == 1)
	{
		global.player_position = "A";
	}
	else if (global.player_row == 2)
	{
		global.player_position = "B";
	}
	else if (global.player_row == 3)
	{
		global.player_position = "C";
	}
	else if (global.player_row == 4)
	{
		global.player_position = "D";
	}
	else if (global.player_row == 5)
	{
		global.player_position = "E";
	}
	else if (global.player_row == 6)
	{
		global.player_position = "F";
	}
	else if (global.player_row == 7)
	{
		global.player_position = "G";
	}
	else if (global.player_row == 8)
	{
		global.player_position = "H";
	}
	else if (global.player_row == 9)
	{
		global.player_position = "I";
	}
	else if (global.player_row == 10)
	{
		global.player_position = "J";
	}
	else if (global.player_row == 11)
	{
		global.player_position = "K";
	}
	else if (global.player_row == 12)
	{
		global.player_position = "L";
	}
	else if (global.player_row == 13)
	{
		global.player_position = "M";
	}
	else if (global.player_row == 14)
	{
		global.player_position = "N";
	}
	else if (global.player_row == 15)
	{
		global.player_position = "O";
	}
	else if (global.player_row == 16)
	{
		global.player_position = "P";
	}
	else if (global.player_row == 17)
	{
		global.player_position = "Q";
	}
	else if (global.player_row == 18)
	{
		global.player_position = "R";
	}
	else if (global.player_row == 19)
	{
		global.player_position = "S";
	}
	else if (global.player_row == 20)
	{
		global.player_position = "T";
	}
	global.player_position += string(global.player_column);
	
	progress_time(1, "hours");
	room_goto(1);
}
// Selection for when moving west between sections on the map
else if (text == "Go west")
{
	// Check for movements that lead to squares with multiple sides
	var _row = global.player_row;
	var _column = global.player_column;
	// A12 and B12
	if ((_row == 1 and _column == 12) or (_row == 2 and _column == 12))
	{
		global.direction_selection = "Front side";
	}
	// B15 and C11
	else if ((_row == 2 and _column == 15) or (_row == 3 and _column == 11))
	{
		global.direction_selection = "Crash side";
	}
	// G14, H13, I13, K16
	else if ((_row == 7 and _column == 14) or ((_row == 8 or _row == 9) and _column == 13) or (_row == 11 and _column == 16))
	{
		global.direction_selection = "South side";
	}
	
	// West means moving to the right, so a lower column number
	global.player_column -= 1;
	global.selection = "Enter map square";
	
	// Convert position to the string used by other systems
	if (global.player_row == 1)
	{
		global.player_position = "A";
	}
	else if (global.player_row == 2)
	{
		global.player_position = "B";
	}
	else if (global.player_row == 3)
	{
		global.player_position = "C";
	}
	else if (global.player_row == 4)
	{
		global.player_position = "D";
	}
	else if (global.player_row == 5)
	{
		global.player_position = "E";
	}
	else if (global.player_row == 6)
	{
		global.player_position = "F";
	}
	else if (global.player_row == 7)
	{
		global.player_position = "G";
	}
	else if (global.player_row == 8)
	{
		global.player_position = "H";
	}
	else if (global.player_row == 9)
	{
		global.player_position = "I";
	}
	else if (global.player_row == 10)
	{
		global.player_position = "J";
	}
	else if (global.player_row == 11)
	{
		global.player_position = "K";
	}
	else if (global.player_row == 12)
	{
		global.player_position = "L";
	}
	else if (global.player_row == 13)
	{
		global.player_position = "M";
	}
	else if (global.player_row == 14)
	{
		global.player_position = "N";
	}
	else if (global.player_row == 15)
	{
		global.player_position = "O";
	}
	else if (global.player_row == 16)
	{
		global.player_position = "P";
	}
	else if (global.player_row == 17)
	{
		global.player_position = "Q";
	}
	else if (global.player_row == 18)
	{
		global.player_position = "R";
	}
	else if (global.player_row == 19)
	{
		global.player_position = "S";
	}
	else if (global.player_row == 20)
	{
		global.player_position = "T";
	}
	global.player_position += string(global.player_column);
	
	progress_time(1, "hours");
	room_goto(1);
}
// Selection for when moving south between sections on the map
else if (text == "Go south")
{
	// Check for movements that lead to squares with multiple sides
	var _row = global.player_row;
	var _column = global.player_column;
	// A10
	if (_row == 1 and _column == 10)
	{
		global.direction_selection = "Back side";
	}
	// A14
	else if (_row == 1 and _column == 14)
	{
		global.direction_selection = "Front side";
	}
	// F13, G12, J15
	else if ((_row == 6 and _column == 13) or (_row == 7 and _column == 12) or (_row == 10 and _column == 15))
	{
		global.direction_selection = "North side";
	}
	
	// South is down, so larger row number
	global.player_row += 1;
	global.selection = "Enter map square";
	
	// Convert position to the string used by other systems
	if (global.player_row == 1)
	{
		global.player_position = "A";
	}
	else if (global.player_row == 2)
	{
		global.player_position = "B";
	}
	else if (global.player_row == 3)
	{
		global.player_position = "C";
	}
	else if (global.player_row == 4)
	{
		global.player_position = "D";
	}
	else if (global.player_row == 5)
	{
		global.player_position = "E";
	}
	else if (global.player_row == 6)
	{
		global.player_position = "F";
	}
	else if (global.player_row == 7)
	{
		global.player_position = "G";
	}
	else if (global.player_row == 8)
	{
		global.player_position = "H";
	}
	else if (global.player_row == 9)
	{
		global.player_position = "I";
	}
	else if (global.player_row == 10)
	{
		global.player_position = "J";
	}
	else if (global.player_row == 11)
	{
		global.player_position = "K";
	}
	else if (global.player_row == 12)
	{
		global.player_position = "L";
	}
	else if (global.player_row == 13)
	{
		global.player_position = "M";
	}
	else if (global.player_row == 14)
	{
		global.player_position = "N";
	}
	else if (global.player_row == 15)
	{
		global.player_position = "O";
	}
	else if (global.player_row == 16)
	{
		global.player_position = "P";
	}
	else if (global.player_row == 17)
	{
		global.player_position = "Q";
	}
	else if (global.player_row == 18)
	{
		global.player_position = "R";
	}
	else if (global.player_row == 19)
	{
		global.player_position = "S";
	}
	else if (global.player_row == 20)
	{
		global.player_position = "T";
	}
	global.player_position += string(global.player_column);
	
	progress_time(1, "hours");
	room_goto(1);
}
// Selection for when moving east between sections on the map
else if (text == "Go east")
{
	// Check for movements that lead to squares with multiple sides
	var _row = global.player_row;
	var _column = global.player_column;
	//B9 and C9
	if ((_row == 2 or _row == 3) and _column == 9)
	{
		global.direction_selection = "Back side";
	}
	// B13
	else if (_row == 2 and _column == 13)
	{
		global.direction_selection = "Front side";
	}
	// G12, H11, I11, and K14
	else if ((_row == 7 and _column == 12) or ((_row == 8 or _row = 9) and _column == 11) or (_row == 11 and _column == 14))
	{
		global.direction_selection = "North side";
	}
	
	// East is right, so a larger column number
	global.player_column += 1;
	global.selection = "Enter map square";
	
	if (global.player_row == 1)
	{
		global.player_position = "A";
	}
	else if (global.player_row == 2)
	{
		global.player_position = "B";
	}
	else if (global.player_row == 3)
	{
		global.player_position = "C";
	}
	else if (global.player_row == 4)
	{
		global.player_position = "D";
	}
	else if (global.player_row == 5)
	{
		global.player_position = "E";
	}
	else if (global.player_row == 6)
	{
		global.player_position = "F";
	}
	else if (global.player_row == 7)
	{
		global.player_position = "G";
	}
	else if (global.player_row == 8)
	{
		global.player_position = "H";
	}
	else if (global.player_row == 9)
	{
		global.player_position = "I";
	}
	else if (global.player_row == 10)
	{
		global.player_position = "J";
	}
	else if (global.player_row == 11)
	{
		global.player_position = "K";
	}
	else if (global.player_row == 12)
	{
		global.player_position = "L";
	}
	else if (global.player_row == 13)
	{
		global.player_position = "M";
	}
	else if (global.player_row == 14)
	{
		global.player_position = "N";
	}
	else if (global.player_row == 15)
	{
		global.player_position = "O";
	}
	else if (global.player_row == 16)
	{
		global.player_position = "P";
	}
	else if (global.player_row == 17)
	{
		global.player_position = "Q";
	}
	else if (global.player_row == 18)
	{
		global.player_position = "R";
	}
	else if (global.player_row == 19)
	{
		global.player_position = "S";
	}
	else if (global.player_row == 20)
	{
		global.player_position = "T";
	}
	global.player_position += string(global.player_column);
	
	progress_time(1, "hours");
	room_goto(1);
}
// Selection to cancel movement between sections on the map
else if (text == "Don't leave area")
{
	global.selection = "Enter map square";
	room_goto(1);
}
else if (text == "Go to camp")
{
	global.selection = "camp";
	room_goto(2);
}