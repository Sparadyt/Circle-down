if(!variable_global_exists("circle_amount")) global.circle_amount = 0;
global.circle_amount += 1;
global.pressed_circles = 0;
circle_id = global.circle_amount;
pressed = false;
drag_circle = false;
dragged = false;

//show_debug_message($"Circle Amount: {global.circle_amount}");
//show_debug_message($"Total circle objects: {instance_number(obj_circle)}");

enum circle_state
{
	pressed,
	toPress,
	unavailable,
}

state = GetState();
ChangeSprite();

function DragCircleChecking()
{
	drag_path = instance_position(x, y, obj_dragPath);
	if(drag_path == noone) return;
	
	drag_end = instance_position(drag_path.x, drag_path.y, obj_dragPath);
	if(drag_end == noone) return;
	
	drag_circle = true;
}
function GetState()
{
	var _circle_amount = instance_number(obj_circle) - global.pressed_circles;
	if(circle_id == _circle_amount && !pressed)
	{
		return circle_state.toPress;
	}
	
	else if(!pressed)
	{
		return circle_state.unavailable;
	}
	
	else if(pressed)
	{
		return circle_state.pressed;
	}
}

function ChangeSprite()
{
	if(state == circle_state.unavailable) sprite_index = spr_unavailable_circle;
	else if(state == circle_state.pressed) sprite_index = spr_pressed_circle;
	else if(state == circle_state.toPress) sprite_index = spr_toPress_circle;
}

function Tapped()
{
	//if(state != circle_state.toPress)
	{
		Lost();
	}
	
	//if(!drag_circle)
	{
		show_debug_message("Tapped")

		state = circle_state.pressed;
		pressed = true;
		global.pressed_circles++;
		global.circle_amount--;
	}
	
	//Playing sound
	//if(!drag_circle)
	{
		var _pitch = random_range(0.75, 1.25);
		audio_play_sound(snd_click, 100, false, 1, 0, _pitch);
	}
	
	Win();
}

function Lost()
{
	global.circle_amount = 0;
	global.pressed_circles = 0;
	obj_game_manager.lost = true;
	room_restart();
	return;
}

function Win()
{
	if(global.pressed_circles == instance_number(obj_circle) && room != room_last)
	{
		obj_timer.paused = true;
		
		room_goto(rm_level_completed);
		var _pitch = random_range(0.75, 1.25);
		audio_play_sound(snd_level_complete, 100, false, 1, 0, _pitch);
	}
}