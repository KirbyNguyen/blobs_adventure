/// @description Create wall

// HP
event_inherited();

wall = instance_create_layer(x, y, "Walls", obj_wall);

state = STATE.IDLE;