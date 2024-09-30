// Create the directional buttons when choosing how to move between map squares
// _paths = number of directions capable of travel
// directions = boolean variables representing which directions are available for travel
function enter_map_square(_paths, _north, _west, _south, _east)
{
	if (_paths == 4)
	{
		var _first = instance_create_layer(global.horizontal, global.top_vertical, "Instances", obj_button);
		_first.text = "Go north"
		var _second = instance_create_layer(global.horizontal, global.second_vertical, "Instances", obj_button);
		_second.text = "Go west"
		var _third = instance_create_layer(global.horizontal, global.third_vertical, "Instances", obj_button);
		_third.text = "Go south"
		var _fourth = instance_create_layer(global.horizontal, global.fourth_vertical, "Instances", obj_button);
		_fourth.text = "Go east"
	}
	else if (_paths == 3)
	{
		if (!_north)
		{
			var _first = instance_create_layer(global.horizontal, global.top_vertical, "Instances", obj_button);
			_first.text = "Go west"
			var _second = instance_create_layer(global.horizontal, global.second_vertical, "Instances", obj_button);
			_second.text = "Go south"
			var _third = instance_create_layer(global.horizontal, global.third_vertical, "Instances", obj_button);
			_third.text = "Go east"
		}
		else
		{
			var _first = instance_create_layer(global.horizontal, global.top_vertical, "Instances", obj_button);
			_first.text = "Go north"
			if (!_west)
			{
				var _second = instance_create_layer(global.horizontal, global.second_vertical, "Instances", obj_button);
				_second.text = "Go south"
				var _third = instance_create_layer(global.horizontal, global.third_vertical, "Instances", obj_button);
				_third.text = "Go east"
			}
			else
			{
				var _second = instance_create_layer(global.horizontal, global.second_vertical, "Instances", obj_button);
				_second.text = "Go west"
				if (south)
				{
					var _third = instance_create_layer(global.horizontal, global.third_vertical, "Instances", obj_button);
					_third.text = "Go south"
				}
				else
				{
					var _third = instance_create_layer(global.horizontal, global.third_vertical, "Instances", obj_button);
					_third.text = "Go east"
				}
			}
		}
	}
}