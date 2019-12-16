/// @desc feelox_walk()

// Change the sprites and image_speed
if (sprite_index != spr_feelox_walk) {
	image_xscale *= -1;
	sprite_index = spr_feelox_walk;
	image_speed = IMGSPD * 2;
	
	// Setting the timer
	state_timer = room_speed * floor(random_range(2, 5));
}

// Change the walking speed
hspd = walkspd * sign(image_xscale);

// Turn around when hit the wall, or when there is no block 64 pixels under
scr_enemy_turnAround(sign(hspd), 32);
	
// Change to JUMP if there is no ground underneath
if (!place_meeting(x, y + 1, obj_wall))
	state = STATE.JUMP;	
else {
	// Change to IDLE after walking a short time
	if (state_timer < 0 && image_index >= 8) {
		state = STATE.IDLE;
	}
}