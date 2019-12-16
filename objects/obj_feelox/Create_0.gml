/// @description Variables initialization

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
dir = 0;

// Timers
state_timer = irandom_range(1, 3);
turn_timer = room_speed;

// Setting the state machine
state = STATE.IDLE;

// Image_speed
image_speed = IMGSPD;