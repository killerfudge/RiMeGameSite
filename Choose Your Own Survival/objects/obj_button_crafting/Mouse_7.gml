if (text == "craft stone knife")
{
	global.player_materials.rocks -= 1;
	if (global.player_materials.rocks == 0)
	{
		struct_remove(global.player_materials, "rocks");
	}
	global.player_tools.knife = true;
	progress_time(10, "minutes");
	
	// Return to crafting selection
	global.resetter = 8;
	room_goto(2);
}
if (text == "craft hammer")
{
	global.player_materials.rocks -= 1;
	if (global.player_materials.rocks == 0)
	{
		struct_remove(global.player_materials, "rocks");
	}
	global.player_materials.sticks -= 1;
	if (global.player_materials.sticks == 0)
	{
		struct_remove(global.player_materials, "sticks");
	}
	global.player_materials.vines -= 1;
	if (global.player_materials.vines == 0)
	{
		struct_remove(global.player_materials, "vines");
	}
	global.player_tools.hammer = true;
	progress_time(20, "minutes");
	
	// return to crafting selection
	global.resetter = 8;
	room_goto(2);
}
if (text == "craft bow")
{
	global.player_materials.sticks -= 1;
	if (global.player_materials.sticks == 0)
	{
		struct_remove(global.player_materials, "sticks");
	}
	global.player_materials.vines -= 1;
	if (global.player_materials.vines == 0)
	{
		struct_remove(global.player_materials, "vines");
	}
	global.player_weapons.bow = {};
	global.player_weapons.bow.arrows = 0;
	progress_time(20, "minutes");
	
	// return to crafting selection
	global.resetter = 8;
	room_goto(2);
}
if (text == "craft arrow")
{
	global.player_materials.sticks -= 1;
	if (global.player_materials.sticks == 0)
	{
		struct_remove(global.player_materials, "sticks");
	}
	global.player_weapons.bow.arrows += 1;
	progress_time(10, "minutes");
	
	// return to crafting selection
	global.resetter = 8;
	room_goto(2);
}
else if (text == "finish crafting")
{
	global.item = "";
	global.resetter = 0;
	room_goto(2);
}