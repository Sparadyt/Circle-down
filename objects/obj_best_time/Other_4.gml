//if(!variable_global_exists("global.lists_created"))
//{
//	global.levelms = ds_list_create();
//	global.levelsec = ds_list_create();
//	global.levelmin = ds_list_create();
//}
if(room == rm_level_completed) return;
if(ds_list_find_index(global.completed_levels, room) != -1) return;

show_debug_message("(best time) New Level");
ds_list_add(global.completed_levels, room);
ds_list_add(global.levelms, 99999);
ds_list_add(global.levelsec, 99999);
ds_list_add(global.levelmin, 999999);