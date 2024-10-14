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
	if (global.player_position == "A4")
	{
		pages = 1
		room_text[0] = "Map square A4\nHas medicinal herbs"
	}
	else if (global.player_position == "A5")
	{
		pages = 1
		room_text[0] = "Map square A5\nHas medicinal herbs"
	}
	else if (global.player_position == "A8")
	{
		pages = 1
		room_text[0] = "Map square A8"
	}
	else if (global.player_position == "A9")
	{
		pages = 1
		room_text[0] = "Hello new area. \nPick a new direction to move."
	}
	else if (global.player_position == "A10")
	{
		pages = 1
		room_text[0] = "This is where you landed after escaping out the back of the bus."
	}
	else if (global.player_position == "B4")
	{
		pages = 1
		room_text[0] = "Map square B4\nHas medicinal herbs"
	}
	else if (global.player_position == "B5")
	{
		pages = 1
		room_text[0] = "Map square B5\nHas medicinal herbs"
	}
	else if (global.player_position == "B6")
	{
		pages = 1
		room_text[0] = "Map square B6"
	}
	else if (global.player_position == "B8")
	{
		pages = 1
		room_text[0] = "Map square B8"
	}
	else if (global.player_position == "B9")
	{
		pages = 1
		room_text[0] = "Map square B9"
	}
	else if (global.player_position == "B10")
	{
		pages = 1
		room_text[0] = "Position B10"
	}
	else if (global.player_position == "C6")
	{
		pages = 1
		room_text[0] = "Map square C6"
	}
	else if (global.player_position == "C8")
	{
		pages = 1
		room_text[0] = "Map square C8"
	}
	else if (global.player_position == "C9")
	{
		pages = 1
		room_text[0] = "Map square C9"
	}
	else if (global.player_position == "C10")
	{
		pages = 1
		room_text[0] = "Position C10"
	}
	else if (global.player_position == "D2")
	{
		pages = 1
		room_text[0] = "Map square D2"
	}
	else if (global.player_position == "D3")
	{
		pages = 1
		room_text[0] = "Map square D3"
	}
	else if (global.player_position == "D4")
	{
		pages = 1
		room_text[0] = "Position D4"
	}
	else if (global.player_position == "D6")
	{
		pages = 1
		room_text[0] = "Position D6"
	}
	else if (global.player_position == "D8")
	{
		pages = 1
		room_text[0] = "Position D8"
	}
	else if (global.player_position == "D9")
	{
		pages = 1
		room_text[0] = "Position D9"
	}
	else if (global.player_position == "E2")
	{
		pages = 1
		room_text[0] = "Position E2"
	}
	else if (global.player_position == "E3")
	{
		pages = 1
		room_text[0] = "Map square E3"
	}
	else if (global.player_position == "E4")
	{
		pages = 1
		room_text[0] = "Map square E4"
	}
	else if (global.player_position == "E5")
	{
		pages = 1
		room_text[0] = "Position E5"
	}
	else if (global.player_position == "E6")
	{
		pages = 1
		room_text[0] = "Position E6"
	}
	else if (global.player_position == "E7")
	{
		pages = 1
		room_text[0] = "Position E7"
	}
	else if (global.player_position == "E8")
	{
		pages = 1
		room_text[0] = "Position E8"
	}
	else if (global.player_position == "F1")
	{
		pages = 1
		room_text[0] = "Position F1"
	}
	else if (global.player_position == "F2")
	{
		pages = 1
		room_text[0] = "Position F2"
	}
	else if (global.player_position == "G1")
	{
		pages = 1
		room_text[0] = "Position G1"
	}
	else if (global.player_position == "G2")
	{
		pages = 1
		room_text[0] = "Position G2"
	}
	else if (global.player_position == "H1")
	{
		pages = 1
		room_text[0] = "Position H1"
	}
	else if (global.player_position == "I1")
	{
		pages = 1
		room_text[0] = "Position I1"
	}
	else if (global.player_position == "J1")
	{
		pages = 1
		room_text[0] = "Position J1\nThe End?"
		global.player_position = "The End?"
	}
}
text = room_text[0]

// If there is only one block of text, go ahead and have the room load with the buttons
if (pages == 1)
{
	event_perform(ev_mouse, ev_left_release)
}