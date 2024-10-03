// If there is more story text to display, change the displayed text
if (index < pages)
{
	text = room_text[index++]
}
// If there is no more story text to display, create the buttons
if (index == pages)
{	
	// The first choice in the game
	if (global.selection == "New Game")
	{
		create_button(1, "Escape through the front window")
		create_button(2, "Escape through the back emergency door")
	}
	// Skipping what will be story after escaping the back of the bus
	if (global.selection == "Back Door")
	{
		create_button(1, "Skip to move")
	}
	// Entering a map square
	if (global.selection == "Enter map square")
	{
		// Determine new map square
		if (global.player_position == "A4")
		{
			move_between_map_squares(2, false, false, true, true)
		}
		else if (global.player_position == "A5")
		{
			move_between_map_squares(2, false, true, true, false)
		}
		else if (global.player_position == "A8")
		{
			move_between_map_squares(2, false, false, true, true)
		}
		else if (global.player_position == "A9")
		{
			move_between_map_squares(3, false, true, true, true)
		}
		else if (global.player_position == "A10")
		{
			move_between_map_squares(2, false, true, true, false)
		}
		else if (global.player_position == "B4")
		{
			move_between_map_squares(2, true, false, false, true)
		}
		else if (global.player_position == "B5")
		{
			move_between_map_squares(3, true, true, false, true)
		}
		else if (global.player_position == "B6")
		{
			move_between_map_squares(2, false, true, true, false)
		}
		else if (global.player_position == "B8")
		{
			move_between_map_squares(3, true, false, true, true)
		}
		else if (global.player_position == "B9")
		{
			move_between_map_squares(4, true, true, true, true)
		}
		else if (global.player_position == "B10")
		{
			move_between_map_squares(3, true, true, true, false)
		}
		else if (global.player_position == "C6")
		{
			move_between_map_squares(2, true, false, true, false)
		}
		else if (global.player_position == "C8")
		{
			move_between_map_squares(3, true, false, true, true)
		}
		else if (global.player_position == "C9")
		{
			move_between_map_squares(4, true, true, true, true)
		}
		else if (global.player_position == "C10")
		{
			move_between_map_squares(2, true, true, false, false)
		}
		else if (global.player_position == "D2")
		{
			move_between_map_squares(2, false, false, true, true)
		}
		else if (global.player_position == "D3")
		{
			move_between_map_squares(3, false, true, true, true)
		}
		else if (global.player_position == "D4")
		{
			move_between_map_squares(2, false, true, true, false)
		}
		else if (global.player_position == "D6")
		{
			move_between_map_squares(2, true, false, true, false)
		}
		else if (global.player_position == "D8")
		{
			move_between_map_squares(3, true, false, true, true)
		}
		else if (global.player_position == "D9")
		{
			move_between_map_squares(2, true, true, false, false)
		}
		else if (global.player_position == "E2")
		{
			move_between_map_squares(3, true, false, true, true)
		}
		else if (global.player_position == "E3")
		{
			move_between_map_squares(3, true, true, false, true)
		}
		else if (global.player_position == "E4")
		{
			move_between_map_squares(3, true, true, false, true)
		}
		else if (global.player_position == "E5")
		{
			move_between_map_squares(3, true, true, false, true)
		}
		else if (global.player_position == "E6")
		{
			move_between_map_squares(3, true, true, false, true)
		}
		else if (global.player_position == "E7")
		{
			move_between_map_squares(3, false, true, true, true)
		}
		else if (global.player_position == "E8")
		{
			move_between_map_squares(3, true, true, true, false)
		}
		else if (global.player_position == "F1")
		{
			move_between_map_squares(2, false, false, true, true)
		}
		else if (global.player_position == "F2")
		{
			move_between_map_squares(3, true, true, true, false)
		}
		else if (global.player_position == "G1")
		{
			move_between_map_squares(3, true, false, true, true)
		}
		else if (global.player_position == "G2")
		{
			move_between_map_squares(2, true, true, false, false)
		}
		else if (global.player_position == "H1")
		{
			move_between_map_squares(2, true, false, true, false)
		}
		else if (global.player_position == "I1")
		{
			move_between_map_squares(2, true, false, true, false)
		}
		else if (global.player_position == "J1")
		{
			move_between_map_squares(3, true, false, true, true)
		}
		else if (global.player_position == "J2")
		{
			move_between_map_squares(2, false, true, true, false)
		}
	}
}