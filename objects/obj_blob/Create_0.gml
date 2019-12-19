/// @description Variables Declaration

// CONSTANTS 
MAXHP = 5;
MAXSTAMINA = 5;
IMGSPD = 0.6;
FRACTION = 0.75;

// Setting stats
hp = MAXHP;
stamina = MAXSTAMINA;
life = 2;

// Movement variables
walkspd = 2.5;
hspd = 0;
vspd = 0;
grav = 0.2;

// Timers
jump_timer = 0; // For jump buffer
stamina_timer = 0; // For stamina recover

// Rates
stamina_rate = 0.03;

// Setting the state
state = STATE.ONGROUND;

// Imagespeed
image_speed = IMGSPD;