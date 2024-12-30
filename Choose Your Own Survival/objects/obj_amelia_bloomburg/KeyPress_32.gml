var _close = collision_ellipse(x - 25, y - 25, x + 25, y + 25, obj_player, true, 1)
if (_close)
{
	save_camp_locations();
	room_goto(3);
}