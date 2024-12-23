// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_camp_locations()
{
	global.camp_from_chat = true;
	global.player_x = obj_player.x;
	global.player_y = obj_player.y;
	global.amelia_position = obj_amelia_bloomburg.path_position;
	global.derek_position = obj_derek_hanley.path_position;
	global.evelyn_position = obj_evelyn_wiseman.path_position;
	global.jason_position = obj_jason_edwards.path_position;
	global.rhonda_position = obj_rhonda_fowler.path_position;
}