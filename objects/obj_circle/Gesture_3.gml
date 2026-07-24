if(!drag_circle) return;

//Collision
if(!place_meeting(x, y, drag_end))
{
	Lost();
}

if(place_meeting(x, y, drag_end))
{
	state = circle_state.pressed;
	pressed = true;
	global.pressed_circles++;
	global.circle_amount--;
	
	Win();
}
