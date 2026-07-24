if(room == rm_level_completed)
{
	paused = true;
	return;
	obj_game_manager.time = $"{minute}: {second}.{array_last(string_split(string(obj_game_manager.frames / 60), "."))}";
	
	if(millisecond < array_last(obj_best_time.level1_millisecond))
	{
		array_last(obj_best_time.levelms) = millisecond;
		array_last(obj_best_time.levelsec) = second;
		array_last(obj_best_time.levelmin) = minute;
	}
	
	else if(second < array_last(obj_best_time.level1_second))
	{
		array_last(obj_best_time.levelsec) = second;
		array_last(obj_best_time.levelmin) = millisecond;
	}
	
	if(minute < array_last(obj_best_time.level1_minute))
	{
		array_last(obj_best_time.levelmin) = minute;
		array_last(obj_best_time.levelsec) = second;
		array_last(obj_best_time.levelms) = millisecond;
	}
}