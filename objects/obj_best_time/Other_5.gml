if(obj_game_manager.lost) return;
if(room == rm_level_completed) return;

var new_pb = false;
if(obj_timer.minute < obj_game_manager.GetListLastElement(global.levelmin) || new_pb)
	{
		new_pb = true;
		ds_list_replace(global.levelmin, ds_list_size(global.levelmin) - 1, obj_timer.minute);
	}

if(obj_timer.second < obj_game_manager.GetListLastElement(global.levelsec) || new_pb)
	{
		new_pb = true;
		ds_list_replace(global.levelsec, ds_list_size(global.levelsec) - 1, obj_timer.second);
	}
	
if(obj_timer.millisecond < obj_game_manager.GetListLastElement(global.levelms) || new_pb)
	{
		new_pb = true;
		ds_list_replace(global.levelms, ds_list_size(global.levelms) - 1, obj_timer.millisecond);
		show_debug_message("Trying to update best time");
	}
	
	