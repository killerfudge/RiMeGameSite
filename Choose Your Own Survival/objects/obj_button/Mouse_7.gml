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
	room_goto(1)
}
// Selection in the 'Crash' room at the start of the game which will set starting position
else if (text == "Escape through the back emergency door")
{
	global.selection = "Back Door"
	room_goto(1)
}
// This is currently here to skip what will be story stuff after escaping the bus
else if (text == "Skip to move")
{
	global.selection = "Enter map square"
	global.player_position = "A10"
	room_goto(1)
}
// Selection for when moving north between sections on the map
else if (text == "Go north")
{
	// Change position depending on current position
	if (global.player_position == "B4")
	{
		global.selection = "Enter map square"
		global.player_position = "A4"
		room_goto(1)
	}
	else if (global.player_position == "B5")
	{
		global.selection = "Enter map square"
		global.player_position = "A5"
		room_goto(1)
	}
	else if (global.player_position == "B8")
	{
		global.selection = "Enter map square"
		global.player_position = "A8"
		room_goto(1)
	}
	else if (global.player_position == "B9")
	{
		global.selection = "Enter map square"
		global.player_position = "A9"
		room_goto(1)
	}
	else if (global.player_position == "B10")
	{
		global.selection = "Enter map square"
		global.player_position = "A10"
		room_goto(1)
	}
	else if (global.player_position == "C6")
	{
		global.selection = "Enter map square"
		global.player_position = "B6"
		room_goto(1)
	}
	else if (global.player_position == "C8")
	{
		global.selection = "Enter map square"
		global.player_position = "B8"
		room_goto(1)
	}
	else if (global.player_position == "C9")
	{
		global.selection = "Enter map square"
		global.player_position = "B9"
		room_goto(1)
	}
	else if (global.player_position == "C10")
	{
		global.selection = "Enter map square"
		global.player_position = "B10"
		room_goto(1)
	}
	else if (global.player_position == "D6")
	{
		global.selection = "Enter map square"
		global.player_position = "C6"
		room_goto(1)
	}
	else if (global.player_position == "D8")
	{
		global.selection = "Enter map square"
		global.player_position = "C8"
		room_goto(1)
	}
	else if (global.player_position == "D9")
	{
		global.selection = "Enter map square"
		global.player_position = "C9"
		room_goto(1)
	}
	else if (global.player_position == "E2")
	{
		global.selection = "Enter map square"
		global.player_position = "D2"
		room_goto(1)
	}
	else if (global.player_position == "E3")
	{
		global.selection = "Enter map square"
		global.player_position = "D3"
		room_goto(1)
	}
	else if (global.player_position == "E4")
	{
		global.selection = "Enter map square"
		global.player_position = "D4"
		room_goto(1)
	}
	else if (global.player_position == "E6")
	{
		global.selection = "Enter map square"
		global.player_position = "D6"
		room_goto(1)
	}
	else if (global.player_position == "E8")
	{
		global.selection = "Enter map square"
		global.player_position = "D8"
		room_goto(1)
	}
	else if (global.player_position == "F2")
	{
		global.selection = "Enter map square"
		global.player_position = "E2"
		room_goto(1)
	}
	else if (global.player_position == "G1")
	{
		global.selection = "Enter map square"
		global.player_position = "F1"
		room_goto(1)
	}
	else if (global.player_position == "G2")
	{
		global.selection = "Enter map square"
		global.player_position = "F2"
		room_goto(1)
	}
	else if (global.player_position == "H1")
	{
		global.selection = "Enter map square"
		global.player_position = "G1"
		room_goto(1)
	}
	else if (global.player_position == "I1")
	{
		global.selection = "Enter map square"
		global.player_position = "H1"
		room_goto(1)
	}
	else if (global.player_position == "J1")
	{
		global.selection = "Enter map square"
		global.player_position = "H1"
		room_goto(1)
	}
}
// Selection for when moving west between sections on the map
else if (text == "Go west")
{
	// Change position depending on current position
	if (global.player_position == "A5")
	{
		global.selection = "Enter map square"
		global.player_position = "A4"
		room_goto(1)
	}
	else if (global.player_position == "A9")
	{
		global.selection = "Enter map square"
		global.player_position = "A8"
		room_goto(1)
	}
	else if (global.player_position == "A10")
	{
		global.selection = "Enter map square"
		global.player_position = "A9"
		room_goto(1)
	}
	else if (global.player_position == "B5")
	{
		global.selection = "Enter map square"
		global.player_position = "B4"
		room_goto(1)
	}
	else if (global.player_position == "B6")
	{
		global.selection = "Enter map square"
		global.player_position = "B5"
		room_goto(1)
	}
	else if (global.player_position == "B9")
	{
		global.selection = "Enter map square"
		global.player_position = "B8"
		room_goto(1)
	}
	else if (global.player_position == "B10")
	{
		global.selection = "Enter map square"
		global.player_position = "B9"
		room_goto(1)
	}
	else if (global.player_position == "C9")
	{
		global.selection = "Enter map square"
		global.player_position = "C8"
		room_goto(1)
	}
	else if (global.player_position == "C10")
	{
		global.selection = "Enter map square"
		global.player_position = "C9"
		room_goto(1)
	}
	else if (global.player_position == "D3")
	{
		global.selection = "Enter map square"
		global.player_position = "D2"
		room_goto(1)
	}
	else if (global.player_position == "D4")
	{
		global.selection = "Enter map square"
		global.player_position = "D3"
		room_goto(1)
	}
	else if (global.player_position == "D9")
	{
		global.selection = "Enter map square"
		global.player_position = "D8"
		room_goto(1)
	}
	else if (global.player_position == "E3")
	{
		global.selection = "Enter map square"
		global.player_position = "E2"
		room_goto(1)
	}
	else if (global.player_position == "E4")
	{
		global.selection = "Enter map square"
		global.player_position = "E3"
		room_goto(1)
	}
	else if (global.player_position == "E5")
	{
		global.selection = "Enter map square"
		global.player_position = "E4"
		room_goto(1)
	}
	else if (global.player_position == "E6")
	{
		global.selection = "Enter map square"
		global.player_position = "E5"
		room_goto(1)
	}
	else if (global.player_position == "E7")
	{
		global.selection = "Enter map square"
		global.player_position = "E6"
		room_goto(1)
	}
	else if (global.player_position == "E8")
	{
		global.selection = "Enter map square"
		global.player_position = "E7"
		room_goto(1)
	}
	else if (global.player_position == "F2")
	{
		global.selection = "Enter map square"
		global.player_position = "F1"
		room_goto(1)
	}
	else if (global.player_position == "G2")
	{
		global.selection = "Enter map square"
		global.player_position = "G1"
		room_goto(1)
	}
}
// Selection for when moving south between sections on the map
else if (text == "Go south")
{
	// Change position depending on current position
	if (global.player_position == "A4")
	{
		global.selection = "Enter map square"
		global.player_position = "B4"
		room_goto(1)
	}
	else if (global.player_position == "A5")
	{
		global.selection = "Enter map square"
		global.player_position = "B5"
		room_goto(1)
	}
	else if (global.player_position == "A8")
	{
		global.selection = "Enter map square"
		global.player_position = "B8"
		room_goto(1)
	}
	else if (global.player_position == "A9")
	{
		global.selection = "Enter map square"
		global.player_position = "B9"
		room_goto(1)
	}
	else if (global.player_position == "A10")
	{
		global.selection = "Enter map square"
		global.player_position = "B10"
		room_goto(1)
	}
	else if (global.player_position == "B6")
	{
		global.selection = "Enter map square"
		global.player_position = "C6"
		room_goto(1)
	}
	else if (global.player_position == "B8")
	{
		global.selection = "Enter map square"
		global.player_position = "C8"
		room_goto(1)
	}
	else if (global.player_position == "B9")
	{
		global.selection = "Enter map square"
		global.player_position = "C9"
		room_goto(1)
	}
	else if (global.player_position == "B10")
	{
		global.selection = "Enter map square"
		global.player_position = "C10"
		room_goto(1)
	}
	else if (global.player_position == "C6")
	{
		global.selection = "Enter map square"
		global.player_position = "D6"
		room_goto(1)
	}
	else if (global.player_position == "C8")
	{
		global.selection = "Enter map square"
		global.player_position = "D8"
		room_goto(1)
	}
	else if (global.player_position == "C9")
	{
		global.selection = "Enter map square"
		global.player_position = "D9"
		room_goto(1)
	}
	else if (global.player_position == "D2")
	{
		global.selection = "Enter map square"
		global.player_position = "E2"
		room_goto(1)
	}
	else if (global.player_position == "D3")
	{
		global.selection = "Enter map square"
		global.player_position = "E3"
		room_goto(1)
	}
	else if (global.player_position == "D4")
	{
		global.selection = "Enter map square"
		global.player_position = "E4"
		room_goto(1)
	}
	else if (global.player_position == "D6")
	{
		global.selection = "Enter map square"
		global.player_position = "E6"
		room_goto(1)
	}
	else if (global.player_position == "D8")
	{
		global.selection = "Enter map square"
		global.player_position = "E8"
		room_goto(1)
	}
	else if (global.player_position == "E2")
	{
		global.selection = "Enter map square"
		global.player_position = "F2"
		room_goto(1)
	}
	else if (global.player_position == "F1")
	{
		global.selection = "Enter map square"
		global.player_position = "G1"
		room_goto(1)
	}
	else if (global.player_position == "F2")
	{
		global.selection = "Enter map square"
		global.player_position = "G2"
		room_goto(1)
	}
	else if (global.player_position == "G1")
	{
		global.selection = "Enter map square"
		global.player_position = "H1"
		room_goto(1)
	}
	else if (global.player_position == "H1")
	{
		global.selection = "Enter map square"
		global.player_position = "I1"
		room_goto(1)
	}
	else if (global.player_position == "I1")
	{
		global.selection = "Enter map square"
		global.player_position = "J1"
		room_goto(1)
	}
}
// Selection for when moving east between sections on the map
else if (text == "Go east")
{
	// Change position depending on current position
	if (global.player_position == "A4")
	{
		global.selection = "Enter map square"
		global.player_position = "A5"
		room_goto(1)
	}
	else if (global.player_position == "A8")
	{
		global.selection = "Enter map square"
		global.player_position = "A9"
		room_goto(1)
	}
	else if (global.player_position == "A9")
	{
		global.selection = "Enter map square"
		global.player_position = "A10"
		room_goto(1)
	}
	else if (global.player_position == "B4")
	{
		global.selection = "Enter map square"
		global.player_position = "B5"
		room_goto(1)
	}
	else if (global.player_position == "B5")
	{
		global.selection = "Enter map square"
		global.player_position = "B6"
		room_goto(1)
	}
	else if (global.player_position == "B8")
	{
		global.selection = "Enter map square"
		global.player_position = "B9"
		room_goto(1)
	}
	else if (global.player_position == "B9")
	{
		global.selection = "Enter map square"
		global.player_position = "B10"
		room_goto(1)
	}
	else if (global.player_position == "C8")
	{
		global.selection = "Enter map square"
		global.player_position = "C9"
		room_goto(1)
	}
	else if (global.player_position == "C9")
	{
		global.selection = "Enter map square"
		global.player_position = "C10"
		room_goto(1)
	}
	else if (global.player_position == "D2")
	{
		global.selection = "Enter map square"
		global.player_position = "D3"
		room_goto(1)
	}
	else if (global.player_position == "D3")
	{
		global.selection = "Enter map square"
		global.player_position = "D4"
		room_goto(1)
	}
	else if (global.player_position == "D8")
	{
		global.selection = "Enter map square"
		global.player_position = "D9"
		room_goto(1)
	}
	else if (global.player_position == "E2")
	{
		global.selection = "Enter map square"
		global.player_position = "E3"
		room_goto(1)
	}
	else if (global.player_position == "E3")
	{
		global.selection = "Enter map square"
		global.player_position = "E4"
		room_goto(1)
	}
	else if (global.player_position == "E4")
	{
		global.selection = "Enter map square"
		global.player_position = "E5"
		room_goto(1)
	}
	else if (global.player_position == "E5")
	{
		global.selection = "Enter map square"
		global.player_position = "E6"
		room_goto(1)
	}
	else if (global.player_position == "E6")
	{
		global.selection = "Enter map square"
		global.player_position = "E7"
		room_goto(1)
	}
	else if (global.player_position == "E7")
	{
		global.selection = "Enter map square"
		global.player_position = "E8"
		room_goto(1)
	}
	else if (global.player_position == "F1")
	{
		global.selection = "Enter map square"
		global.player_position = "F2"
		room_goto(1)
	}
	else if (global.player_position == "G1")
	{
		global.selection = "Enter map square"
		global.player_position = "G2"
		room_goto(1)
	}
}