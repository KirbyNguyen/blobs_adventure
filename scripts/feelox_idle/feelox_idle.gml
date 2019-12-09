/// @desc feelox_idle()

// Change the sprites and image_speed
if (sprite_index != spr_feelox_idle) {
	image_xscale *= -1;
	sprite_index = spr_feelox_idle;
	image_speed = IMGSPD;
	
	// Stop moving
	hspd = 0;
	
	// Turn timer
	change_state_timer = 0;
}

// Setting the timer
if (state_timer < 0) {
	state_timer = room_speed * 2;
	
	// Flip the direction
	image_xscale *= -1;
	
	// Change to WALK
	if (change_state_timer >= choose(2, 3))
		state = STATE.WALK;
	
	// Increase the chance to WALK
	change_state_timer++;
}