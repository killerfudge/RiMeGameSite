// If there is more story text to display, change the displayed text
if (index < pages)
{
	index++
	text = room_text[index - 1]
}
// If there is no more story text to display, create the buttons
if (index == pages)
{
	// The positioning values for buttons
	var _horizontal = 675
	var _top_vertical = 70
	var _second_vertical = 200
	
	if (global.selection == "New Game")
	{
		var _front_window = instance_create_layer(_horizontal, _top_vertical, "Instances", obj_button);
		_front_window.text = "Escape through the front window"
		var _back_exit = instance_create_layer(_horizontal, _second_vertical, "Instances", obj_button);
		_back_exit.text = "Escape through the back emergency door"
	}
}