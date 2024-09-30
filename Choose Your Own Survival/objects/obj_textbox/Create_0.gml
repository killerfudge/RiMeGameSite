room_text = []
pages = 0
index = 1
// Intro to game
if (global.selection == "New Game")
{
	pages = 2
	room_text[0] = "You've started a new game. Click this panel to start story."
	room_text[1] = "Congrats, your bus has crashed! It is now hanging off a cliff and will soon fall. Choose the direction you escape."
}
// Escaped the bus out the front window
else if (global.selection == "Front Window")
{
	pages = 1
	room_text[0] = "You went out the front window"
}
// Escaped the bus out the back door
else if (global.selection == "Back Door")
{
	pages = 1
	room_text[0] = "You went out the back door"
}
// Moving between squares on the map
else if (global.selection == "Enter map square")
{
	// Determine the square
	if (global.player_position == "A10")
	{
		pages = 1
		room_text[0] = "This is where you landed after escaping out the back of the bus."
	}
	else if (global.player_position == "A9")
	{
		pages = 1
		room_text[0] = "Hello new area. \nPick a new direction to move."
	}
	else if (global.player_position == "B10")
	{
		pages = 1
		room_text[0] = "Position B10"
	}
}
text = room_text[0]

// If there is only one block of text, go ahead and have the room load with the buttons
if (pages == 1)
{
	event_perform(ev_mouse, ev_left_release)
}