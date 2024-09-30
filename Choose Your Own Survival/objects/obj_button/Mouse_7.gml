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
	if (global.player_position == "B10")
	{
		global.selection = "Enter map square"
		global.player_position = "A10"
		room_goto(1)
	}
}
// Selection for when moving west between sections on the map
else if (text == "Go west")
{
	// Change position depending on current position
	if (global.player_position == "A10")
	{
		global.selection = "Enter map square"
		global.player_position = "A9"
		room_goto(1)
	}
}
// Selection for when moving south between sections on the map
else if (text == "Go south")
{
	// Change position depending on current position
	if (global.player_position == "A10")
	{
		global.selection = "Enter map square"
		global.player_position = "B10"
		room_goto(1)
	}
}
// Selection for when moving east between sections on the map
else if (text == "Go east")
{
	// Change position depending on current position
	if (global.player_position == "A9")
	{
		global.selection = "Enter map square"
		global.player_position = "A10"
		room_goto(1)
	}
}