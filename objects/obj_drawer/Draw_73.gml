with(obj_circle)
{
	draw_set_font(fnt_circle);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(x, y, circle_id, 0.125, 0.125, 360);
}

//Timer
millisecond = obj_timer.millisecond;
second = obj_timer.second;
minute = obj_timer.minute;

var _x_scale = 0.125;
var _y_scale = 0.125;

if(room == rm_level_completed)
{
	draw_text_transformed(obj_timer.x, obj_timer.y, obj_game_manager.time, 0.7, 0.7, 360);
}

else
	draw_text_transformed(obj_timer.x, obj_timer.y, $"{minute}:{second}.{millisecond}", _x_scale, _y_scale, 360);

//Best time
if(room == rm_level_completed)
{
	millisecond = obj_game_manager.GetListLastElement(obj_best_time.levelms);
	second = obj_game_manager.GetListLastElement(obj_best_time.levelsec);
	minute = obj_game_manager.GetListLastElement(obj_best_time.levelmin);
	draw_text_transformed(obj_best_time.x, obj_best_time.y, $"PB: {minute}:{second}.{millisecond}", 0.7, 0.7, 360);
}