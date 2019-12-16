/// @description Variable initialization

// Constants
IMGSPD = 0.35;

// Setting stats
hp = 1;
scores_given = 5;

// Movement variables
walkspd = 1;
hspd = 0;
vspd = 0;
grav = 0.2;

// For death animation
tear = noone;

// Timers
state_timer = room_speed * 2;
change_state_timer = 0;

// Setting the state machine
state = STATE.JUMP;

// Image_speed
image_speed = IMGSPD;