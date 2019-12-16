/// @desc heartweb_walk

// Changing the sprite
if (sprite_index != spr_heartweb_walk) {
	sprite_index = spr_heartweb_walk;
	
	// Giving Heartweb movement speed
	if (dir == 0) hspd = walkspd else hspd = - walkspd;
	
	// Setting the timer
	state_timer = room_speed * irandom_range(3, 4);
}

// Turn around when hit a wall or if Heartweb is on the edge
scr_enemy_turnAround(hspd * 50, 1);

// Change back to IDLE when timer hits 0
if (state_timer <= 0) { 
	state = STATE.IDLE;
}
else 
	state_timer--;