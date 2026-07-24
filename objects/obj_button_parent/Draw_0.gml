draw_self();
draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(x, y, button_text, 0.5, 0.5, 360);

draw_set_halign(fa_left);
draw_set_valign(fa_top);