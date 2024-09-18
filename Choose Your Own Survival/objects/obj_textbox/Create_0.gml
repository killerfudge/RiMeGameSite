room_text = []
pages = 0
index = 1
if (global.selection == "New Game")
{
	pages = 2
	room_text[0] = "You've started a new game. Click this panel to start story."
	room_text[1] = "Congrats, your bus has crashed! It is now hanging off a cliff and will soon fall. Choose the direction you escape."
}
else if (global.selection == "Front Window")
{
	pages = 1
	room_text[0] = "You went out the front window"
}
else if (global.selection == "Back Door")
{
	pages = 1
	room_text[0] = "You went out the back door"
}
text = room_text[0]