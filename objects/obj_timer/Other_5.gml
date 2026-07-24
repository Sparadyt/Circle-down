if(room == rm_level_completed)
{
	paused = true;
	obj_game_manager.time = $"{minute}: {second}.{array_last(string_split(string(obj_game_manager.frames / 60), "."))}";
	
	if(millisecond < obj_game_manager.GetListLastElement(obj_best_time.levelms))
	{
		obj_game_manager.GetListLastElement(obj_best_time.levelms) = millisecond;
		obj_game_manager.GetListLastElement(obj_best_time.levelsec) = second;
		obj_game_manager.GetListLastElement(obj_best_time.levelmin) = minute;
	}
	
	else if(second < obj_game_manager.GetListLastElement(obj_best_time.levelsec))
	{
		obj_game_manager.GetListLastElement(obj_best_time.levelsec) = second;
		obj_game_manager.GetListLastElement(obj_best_time.levelmin) = millisecond;
	}
	
	if(minute < obj_game_manager.GetListLastElement(obj_best_time.levelmin))
	{
		obj_game_manager.GetListLastElement(obj_best_time.levelmin) = minute;
		obj_game_manager.GetListLastElement(obj_best_time.levelsec) = second;
		obj_game_manager.GetListLastElement(obj_best_time.levelms) = millisecond;
	}
}