
	paused = true;
	obj_game_manager.time = $"{minute}: {second}.{array_last(string_split(string(obj_game_manager.frames / 60), "."))}";
	
return;
	if(millisecond < obj_game_manager.GetListLastElement(global.levelms))
	{
		obj_game_manager.GetListLastElement(global.levelms) = millisecond;
		obj_game_manager.GetListLastElement(global.levelsec) = second;
		obj_game_manager.GetListLastElement(global.levelmin) = minute;
	}
	
	else if(second < obj_game_manager.GetListLastElement(global.levelsec))
	{
		obj_game_manager.GetListLastElement(global.levelsec) = second;
		obj_game_manager.GetListLastElement(global.levelmin) = millisecond;
	}
	
	if(minute < obj_game_manager.GetListLastElement(global.levelmin))
	{
		obj_game_manager.GetListLastElement(global.levelmin) = minute;
		obj_game_manager.GetListLastElement(global.levelsec) = second;
		obj_game_manager.GetListLastElement(global.levelms) = millisecond;
	}
