/// @desc feelox_fall()

// Changing the sprite
if (sprite_index != spr_feelox_fall) {
	sprite_index = spr_feelox_fall;
	image_speed = 0;
	
	// Horizontal speed
	hspd = walkspd * sign(image_xscale);
}

// Change to IDLE when hit the ground
if (place_meeting(x, y + 1, obj_wall)) 
	state = STATE.IDLE;