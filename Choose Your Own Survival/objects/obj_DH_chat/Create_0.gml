room_text = [];
pages = 0;
index = 1;
end = false;

if (global.derek_spoken)
{
	end = true;
	dialog = irandom(1);
	if (dialog == 0)
	{
		room_text[0] = "Wilderness survival is much more fun in video games.";
	}
	else
	{
		room_text[0] = "I miss my computer.";
	}
}
else if (global.dialog_response == "")
{
	global.derek_spoken = true;
	room_text[0] = "If this were a game I developed, now would be the time to collect resources and learn to craft.";
	create_button(1, "What would you craft first?", "derek");
	create_button(2, "This isn’t a game.", "derek");
}
else if (global.dialog_response == "craft")
{
	room_text[0] = "An axe is usually a safe bet.";
	create_button(1, "Good idea.")
}
else if (global.dialog_response == "not a game")
{
	room_text[0] = "Obviously. I was just making conversation.";
	end = true;
}
text = room_text[0]