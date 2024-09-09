// Find instance for textbox
var _textbox = ""
for (var _i = 0; _i < instance_number(obj_textbox); _i++)
{
	_textbox = instance_find(obj_textbox, _i);
	if (_textbox.text == "Movement")
	{
		break
	}
}

room_goto_next()
if (text == "Run")
{
	_textbox.text = "You ran"
}
else if (text == "Walk")
{
	_textbox.text = "You walked"
}