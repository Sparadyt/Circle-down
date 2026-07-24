with(obj_circle)
{
	show_debug_message($"Circle State: {state}");
}

show_debug_message($"Level Amount: {ds_list_size(obj_best_time.levelsec)}");
show_debug_message($"Last Level PB sec: {GetListLastElement(obj_best_time.levelsec)}");