// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Progress time in game. _time is the amount of time, _increments is either hours
// or minutes
function progress_time(_time, _increments)
{
	if (_increments == "minutes")
	{
		global.time_minutes += _time;
		if (global.time_minutes > 60)
		{
			global.time_minutes -= 60;
			global.time_hours += 1;
		}
	}
	else if (_increment == "hours")
	{
		global.time_hours += _time;
		if (global.time_hours > 24)
		{
			global.time_days += 1;
			global.time_hours -= 24;
		}
	}
	else
	{
		global.time_days += _time;
	}
}