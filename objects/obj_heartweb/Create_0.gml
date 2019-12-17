/// @description Variable initialization

// Inheriting event
event_inherited();

// Constants
RADIUS = 32 * 3;

// Distance from the Heartweb to Blob
distance = 0;

// Timers
state_timer = room_speed * 2;
attack_timer = 0;

// Setting the state machine
state = STATE.JUMP;

// Following the path
path_start(path_heartweb_descend, walkspd * 0.4, path_action_reverse, false);

// Image_speed
image_speed = IMGSPD;