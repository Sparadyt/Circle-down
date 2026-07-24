frames = 0;
time = "00:00.00";
previous_room = room_first;

function WaitForInput()
{
	if(room == rm_level_completed) return;
	
	if(mouse_check_button_pressed(mb_left))
	{
		obj_timer.paused = false;
	}
}

function GetListLastElement(list)
{
	return ds_list_find_value(list, ds_list_size(list) - 1);
}

function CreateNecessaryInstances()
{
	if(!instance_exists(obj_best_time) && room != rm_level_completed) instance_create_layer(0, 0, "Instances", obj_best_time);
}