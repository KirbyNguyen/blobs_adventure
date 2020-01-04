/// @description Drawing stuffs

// Drawing the string
draw_set_color(c_black);
draw_set_font(fnt_mana_20);
draw_set_halign(fa_left);

draw_text(x,  y, "You Win!");
draw_text(x , y + font_get_size(fnt_mana_20) + 10, "R to reset");