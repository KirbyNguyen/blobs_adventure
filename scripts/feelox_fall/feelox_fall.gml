/// @desc feelox_fall

if (sprite_index != spr_feelox_fall) {
	sprite_index = spr_feelox_fall;
	image_speed = 0;
	
	// Some horizontal speed
	if (dir == 0) hspd = walkspd / 2 else hspd = - walkspd / 2;
}

// Change to state IDLE when Feelox touches the floor
if (place_meeting(x, y + 1, obj_wall))
	state = STATE.IDLE;