frames = 0;
frames_after_level_completion = 0;
time = "00:00.00";
previous_room = room_first;
lost = false;
start_delay = 0;

function WaitForInput()
{
	if(room == rm_level_completed) return;
	if(start_delay > 0)
	{
		start_delay--;
		return;
	}
	
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