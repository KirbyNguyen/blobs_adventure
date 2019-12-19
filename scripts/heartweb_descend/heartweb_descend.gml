/// @desc heartweb_descend()

// Changing the sprite
if (sprite_index != spr_heartweb_down) {
	sprite_index = spr_heartweb_down;
	image_speed = IMGSPD;
	
}

if (place_meeting(x, y + 1, obj_wall) || place_meeting(x, y + 1, obj_ledge)) {
	path_end();
	state = STATE.IDLE;
}