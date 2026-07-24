event_inherited();

if(obj_game_manager.previous_room != room_last && room_next != rm_level_completed)
{
	obj_timer.millisecond = 0;
	obj_timer.second = 0;
	obj_timer.minute = 0;
	show_debug_message($"Next Level: {room_next(obj_game_manager.previous_room)}");
	room_goto(room_next(obj_game_manager.previous_room));
}