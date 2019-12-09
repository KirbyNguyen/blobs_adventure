/// @description Variables initialization

// Constants
IMGSPD = 0.35;

// Setting stats
hp = 1;

// Movement variables
walkspd = 1;
hspd = 0;
vspd = 0;
grav = 0.2;

// Timers
state_timer = room_speed * 2;
change_state_timer = 0;

// Setting the state machine
state = STATE.IDLE;

// Image_speed
image_speed = IMGSPD;