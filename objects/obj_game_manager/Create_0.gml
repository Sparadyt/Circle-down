frames = 0;
time = "00:00.00";
previous_room = room_first;

function WaitForInput()
{
	if(mouse_check_button_pressed(mb_left))
	{
		obj_timer.paused = false;
	}
}