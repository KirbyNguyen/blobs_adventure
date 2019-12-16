/// @desc feelox_idle()

// Changing the sprite
if (sprite_index != spr_feelox_idle) {
	sprite_index = spr_feelox_idle;
	image_speed = IMGSPD;
	
	hspd = 0; // Stop moving
	
	// Set the timer
	state_timer = irandom_range(1, 3);
	turn_timer = room_speed * irandom_range(1, 2);
}


	
// Turn around 
if (turn_timer <= 0) {
	
	// Change to WALK after turning enough time
	if (state_timer <= 0)
		state = STATE.WALK;
	else {
		// Flip the sprite
		if (dir == 0) dir = 180 else dir = 0;
		state_timer--; // Decrease the timer
	
		// Reset the timer
		turn_timer = room_speed * irandom_range(1, 2);
	}
	
}
else
	turn_timer--;