/// @desc heartweb_jump()

// Change the sprites and image_speed
if (sprite_index != spr_heartweb_down) {
	sprite_index = spr_heartweb_down;
	image_speed = IMGSPD;
}

// Change state when hit the ground
if (place_meeting(x, y + 2, obj_wall)) 
	state = STATE.IDLE;