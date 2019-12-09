/// @description Drawing the GUI

// Drawing GUI
draw_sprite_stretched(spr_GUI_border, 0, 0, h - sH, w, sH);

// Drawing the string
draw_set_color(c_black);
draw_set_font(fnt_mana_20);
draw_set_halign(fa_right);

draw_text(xB, yB, "Blob: ");
draw_text(xSta, ySta, "Stamina: ");
draw_text(xScore, yScore, "Scores: ");
draw_text(xTimer, yTimer, "Time: ");

// Drawing HP
for (var i = 0; i < obj_blob.MAXHP; i++) {
	if (i < floor(obj_blob.hp))
		draw_sprite(spr_GUI_stat, 0, xStartHP + buffer * i, yStartHP);
	else
		draw_sprite(spr_GUI_stat, 1, xStartHP + buffer * i, yStartHP);
}

// Drawing STAMINA
for (var i = 0; i < obj_blob.MAXSTAMINA; i++) {
	if (i <= floor(obj_blob.stamina))
		draw_sprite(spr_GUI_stat, 0, xStartSta + buffer * i, yStartSta);
	else
		draw_sprite(spr_GUI_stat, 1, xStartSta + buffer * i, yStartSta);
}

// Drawing SCORES
draw_set_halign(fa_left);
draw_text(xTS, yScore, obj_controller.scores);

// Drawing TIME
draw_text(xTS, yTimer, floor(obj_controller.timer));

// Drawing life
draw_sprite(spr_GUI_life, 0, xLife, yLife);
draw_set_font(fnt_mana_30);
draw_text(xLife + sprite_get_width(spr_GUI_life) / 3, yLife - 15, " - " + string(obj_blob.life));