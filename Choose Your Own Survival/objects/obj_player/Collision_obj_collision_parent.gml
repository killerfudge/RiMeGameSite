// Check for collisions so that player is returned to correct spot

// Diagonal collision
var _diagonal = instance_place(xprevious, yprevious, [obj_collision_parent]);
if (_diagonal != noone)
{
	// Move back to previous position on both X and Y axis
	x = xprevious;
	y = yprevious;
}
else
{
	// Horizontal collision
	var _horizontal = instance_place(xprevious, y, [obj_collision_parent]);
	if (_horizontal != noone)
	{
		// Then move back to previous position on the X axis
		x = xprevious;
		y = y;
	}
	else
	{
		// Vertical collision
		//var _vertical = instance_place(x, yprevious, [obj_collision_parent]);
		//if (_vertical != noone)
		//{
		// Then move back to previous position on the Y axis
		x = x;
		y = yprevious;
	//}
	//else
	//{
		// Otherwise just move back on both X and Y axes
	//	x = xprevious;
	//	y = yprevious;
	}
}