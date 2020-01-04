/// @description Drawing stuffs

draw_self();

// Drawing the string
draw_set_color(c_black);
draw_set_font(fnt_mana_20);
draw_set_halign(fa_left);

draw_text(x,  y, "Arrow Keys");
draw_text(x , y + font_get_size(fnt_mana_20) + 10, "for moving");

draw_text(x, y + font_get_size(fnt_mana_20) * 2 + 30, "Z for jumping");

draw_text(x, y + font_get_size(fnt_mana_20) * 3 + 50, "Hold X for");
draw_text(x , y + font_get_size(fnt_mana_20) * 4 + 60, "attacking");