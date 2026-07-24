if(paused) return;

if(obj_game_manager.frames % 60 == 0)
{
	IncreaseSecond();
}

millisecond = int64(array_last(string_split(string(obj_game_manager.frames / 60), ".")));

obj_game_manager.time = $"{minute}: {second}.{millisecond}";