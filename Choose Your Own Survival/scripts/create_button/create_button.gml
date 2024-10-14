// Create a button in the current room
// _number = how many buttons will be on the screen after this one is created, used for positioning
// _text = The text to be displayed on the button
// _type = What sprite to use for the button, allowing different buttons to be used for different situations
function create_button(_number, _text, _type="generic")
{
	var _horizontal
	var _vertical
	if (_type == "generic")
	{
		_horizontal = 675
		if (_number == 1){_vertical = 70}
		else if (_number == 2){_vertical = 200}
		else if (_number == 3){_vertical = 330}
		else if (_number == 4){_vertical = 460}
	}
	var _button = instance_create_layer(_horizontal, _vertical, "Instances", obj_button);
	_button.text = _text
}