/// @desc feelox_walk()

// Changing the sprite
if (sprite_index != spr_feelox_walk) {
	sprite_index = spr_feelox_walk;
	image_speed = IMGSPD * 2;
	
	// Give Feelox movement speed
	if (dir == 0) hspd = walkspd else hspd = - walkspd;
	
	// Setting the timer
	state_timer = room_speed * irandom_range(1, 3);
}

// Turn around when hit a wall or if there is no block blow
scr_enemy_turnAround(hspd * 4, obj_wall.sprite_height + 1);

// Change to JUMP when in air
if (!place_meeting(x, y + 1, obj_wall)) 
	state = STATE.JUMP;

// Change back to IDLE when timer hits 0 and when the animation is finished
if (state_timer <= 0 && image_index >= 8) { 
	state = STATE.IDLE;
}
else 
	state_timer--;