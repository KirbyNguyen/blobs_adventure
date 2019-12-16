/// @desc heartweb_idle()

if (sprite_index != spr_heartweb_idle) {
	sprite_index = spr_heartweb_idle;
	image_speed = IMGSPD;
	
	// Stop moving
	hspd = 0;
	
	// Timer
	state_timer = room_speed * irandom_range(1, 3);
}

if (state_timer < 0) {
	state = STATE.WALK;
}