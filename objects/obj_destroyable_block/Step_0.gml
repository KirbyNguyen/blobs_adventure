/// @description Destroy self

// Getting damage
event_inherited();

if (state == STATE.DEATH) {
	
	instance_destroy();
	with(wall)
		instance_destroy();
}