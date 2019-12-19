/// @description Self-destruction

if (place_meeting(x, y, obj_damageable) || place_meeting(x, y, obj_wall))
	instance_destroy();