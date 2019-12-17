/// @desc heartweb_idle

// Changing the sprite
if (sprite_index != spr_heartweb_idle) {
	sprite_index = spr_heartweb_idle;
	image_speed = IMGSPD;

	hspd = 0; // Stop moving
	
	// Set the timer
	turn_timer = room_speed * irandom_range(1, 2);
}

// Change to ATTACK if Blob is in front of Heartweb and is in the radius
if (distance <= RADIUS && attack_timer < 0) {
	if ( (dir == 0 && obj_blob.x > x) ||
		(dir == 180 && obj_blob.x < x))
		state = STATE.ATTACK;
}

// Change to WALK after waiting enough time
if (turn_timer <= 0) state = STATE.WALK	else turn_timer--;