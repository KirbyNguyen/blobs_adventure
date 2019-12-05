/// @description UI Set-up

// Font size
fnt_size = font_get_size(fnt_mana_20);

// Buffer between stats
buffer = sprite_get_width(spr_GUI_stat) * 1.5;

// The width and height of the UI
w = display_get_gui_width();
h = display_get_gui_height();

// The width and height of the sprite
sW = sprite_get_width(spr_GUI_border);
sH = sprite_get_height(spr_GUI_border);

// The x and y position of BLOB
xB = fnt_size * (string_length("Blob: ") / 2 + string_length("Stamina: ") );
yB = h - sH + fnt_size;

// Starting point of the first HP
xStartHP = xB;
yStartHP = yB + fnt_size / 2;

// The x and y position of STAMINA
xSta = xB;
ySta = yB + fnt_size * 2;

// Starting point of the first STAMINA
xStartSta = xStartHP;
yStartSta = ySta + fnt_size / 2;

// Starting point of scores
xScore = w - fnt_size * string_length("Scores: ");
yScore = ySta;

// Starting point of timer
xTimer = xScore;
yTimer = yB;

// Timer and Score x position
xTS = xScore - 10;

// Position for Life
xLife = xStartHP + buffer * 10;
yLife = h - sH / 2;