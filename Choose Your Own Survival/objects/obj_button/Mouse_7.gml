// Selection on the start menu to start new game
if (text == "New Game")
{
	global.selection = "New Game"
	room_goto_next()
}
// Selection in the 'Crash' room at the start of the game which wil set starting position
else if (text == "Escape through the front window")
{
	global.selection = "Front Window"
	room_goto(1)
}
// Selection in the 'Crash' room at the start of the game which wil set starting position
else if (text == "Escape through the back emergency door")
{
	global.selection = "Back Door"
	room_goto(1)
}