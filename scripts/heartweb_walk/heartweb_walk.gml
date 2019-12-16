/// @desc heartweb_walk()

// Change the sprites and image_speed
if (sprite_index != spr_heartweb_walk) {
	sprite_index = spr_heartweb_walk;
	image_speed = IMGSPD;
	
	// Setting the timer
	state_timer = room_speed * floor(random_range(2, 5));
}

hspd = walkspd * image_xscale;

if (state_timer < 0) {
	hspd = -sign(hspd);
	state = STATE.IDLE;
}

// Turn around if hit a wall or go to an edge
scr_enemy_turnAround(sign(hspd) * sprite_width, 1);