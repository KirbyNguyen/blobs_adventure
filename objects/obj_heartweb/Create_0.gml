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
dir = 0;

// For walking on the ground
ableWalk = false;

// Timers
state_timer = room_speed * 2;

// Setting the state machine
state = STATE.JUMP;

// Following the path
path_start(path_heartweb_descend, walkspd * 0.4, path_action_reverse, false);

// Image_speed
image_speed = IMGSPD;