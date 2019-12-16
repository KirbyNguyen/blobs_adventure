/// @desc heartweb_idle

// Changing the sprite
if (sprite_index != spr_heartweb_idle) {
	sprite_index = spr_heartweb_idle;
	image_speed = IMGSPD;

	hspd = 0; // Stop moving
	
	// Set the timer
	turn_timer = room_speed * irandom_range(1, 2);
}

// Change to WALK after waiting enough time
if (turn_timer <= 0) state = STATE.WALK	else turn_timer--;