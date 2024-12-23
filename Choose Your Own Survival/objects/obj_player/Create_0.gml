walking_speed = 2;

// Set sprite depending on selected character
if variable_global_exists("character")
{
	if (global.character == "doctor")
	{
		sprite_index = spr_DAP_walkingforward;
	}
}

// If re-entering camp from a chat, return to previous location
if(global.camp_from_chat)
{
	x = global.player_x;
	y = global.player_y;
}