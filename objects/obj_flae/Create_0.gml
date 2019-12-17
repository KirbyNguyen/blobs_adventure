/// @description Intialization

// Inheriting event
event_inherited();

// Constants
RADIUS = 100;

// Health
hp = 2;
chase = false;

// Distance
distance = distance_to_object(obj_blob);

// State
state = STATE.IDLE;

// Timer
hurt_timer = 0; 