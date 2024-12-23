var _close = collision_ellipse(x - 100, y - 100, x + 100, y + 100, obj_player, true, 1)
if (_close)
{
	save_camp_locations();
	room_goto(8);
}