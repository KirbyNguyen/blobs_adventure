/// @description Variables initialization

// Inheriting basic stats
event_inherited()


// Timers
state_timer = irandom_range(1, 3);
turn_timer = room_speed;

// Setting the state machine
state = STATE.IDLE;

// Image_speed
image_speed = IMGSPD;