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
		if (global.player_position == "A10")
		{
			move_between_map_squares(2, false, true, true, false)
		}
		else if (global.player_position == "A9")
		{
			move_between_map_squares(3, false, true, true, true)
		}
		else if (global.player_position == "B10")
		{
			move_between_map_squares(3, true, true, true, false)
		}
	}
}