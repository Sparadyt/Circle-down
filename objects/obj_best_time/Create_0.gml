if(variable_global_exists("levelsec")) return;

global.levelms = ds_list_create();
global.levelsec = ds_list_create();
global.levelmin = ds_list_create();
global.completed_levels = ds_list_create();