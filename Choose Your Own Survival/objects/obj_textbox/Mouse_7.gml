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
		var _front_window = instance_create_layer(_horizontal, _top_vertical, "Instances", obj_button);
		_front_window.text = "Escape through the front window"
		var _back_exit = instance_create_layer(_horizontal, _second_vertical, "Instances", obj_button);
		_back_exit.text = "Escape through the back emergency door"
	}
	// Skipping what will be story after escaping the back of the bus
	if (global.selection == "Back Door")
	{
		var _button = instance_create_layer(_horizontal, _top_vertical, "Instances", obj_button);
		_button.text = "Skip to move"
	}
	// Entering a map square from a different one
	if (global.selection == "Enter map square")
	{
		// Determine new map square
		if (global.player_position == "A10")
		{
			var _west = instance_create_layer(_horizontal, _top_vertical, "Instances", obj_button);
			_west.text = "Go west"
			var _south = instance_create_layer(_horizontal, _second_vertical, "Instances", obj_button);
			_south.text = "Go south"
		}
		else if (global.player_position == "A9")
		{
			var _west = instance_create_layer(_horizontal, _top_vertical, "Instances", obj_button);
			_west.text = "Go west"
			var _south = instance_create_layer(_horizontal, _second_vertical, "Instances", obj_button);
			_south.text = "Go south"
			var _east = instance_create_layer(_horizontal, _third_vertical, "Instances", obj_button);
			_east.text = "Go east"
		}
		else if (global.player_position == "B10")
		{
			var _north = instance_create_layer(_horizontal, _top_vertical, "Instances", obj_button);
			_north.text = "Go north"
			var _west = instance_create_layer(_horizontal, _second_vertical, "Instances", obj_button);
			_west.text = "Go west"
			var _south = instance_create_layer(_horizontal, _third_vertical, "Instances", obj_button);
			_south.text = "Go south"
		}
	}
}