// Create the directional buttons when choosing how to move between map squares
// _paths = number of directions capable of travel
// directions = boolean variables representing which directions are available for travel
function move_between_map_squares(_north, _west, _south, _east)
{
	if (_north)
	{
		create_button(1, "Go north")
		if (_west)
		{
			create_button(2, "Go west")
			if (_south)
			{
				create_button(3, "Go south")
				if (_east)
				{
					create_button(4, "Go east")
				}
			}
			else if (_east)
			{
				create_button(3, "Go east")
			}
		}
		else if (_south)
		{
			create_button(2, "Go south")
			if (_east)
			{
				create_button(3, "Go east")
			}
		}
		else if (_east)
		{
			create_button(2, "Go east")
		}
	}
	else if (_west)
	{
		create_button(1, "Go west")
		if (_south)
		{
			create_button(2, "Go south")
			if (_east)
			{
				create_button(3, "Go east")
			}
		}
		else if (_east)
		{
			create_button(2, "Go east")
		}
	}
	else if (_south)
	{
		create_button(1, "Go south")
		if (_east)
		{
			create_button(2, "Go east")
		}
	}
	else
	{
		create_button(1, "Go east")
	}
	create_button(5, "Don't leave area")
}