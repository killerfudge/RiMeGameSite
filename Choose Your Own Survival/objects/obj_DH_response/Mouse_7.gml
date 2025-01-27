if (text == "What would you craft first?")
{
	global.dialog_response = "craft";
	global.resetter = 4;
	room_goto(2);
}
else if (text == "This isn't a game.")
{
	global.dialog_response = "not a game";
	global.derek_relationship -= 5;
	global.resetter = 4;
	room_goto(2);
}
else if (text == "Good idea.")
{
	global.dialog_response = "";
	global.resetter = 0;
	room_goto(2);
}