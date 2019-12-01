/// @desc state_onGround()

// Resetting the image_speed
image_speed = IMGSPD;

// Setting the sprite
if (hspd == 0) {
	if (sprite_index != spr_blob_idle && sprite_index != spr_blob_idle_b)
		sprite_index = spr_blob_idle;
}
else {
	if (sprite_index != spr_blob_walk && sprite_index != spr_blob_walk_b)
		sprite_index = spr_blob_walk;
}

// Changing state to JUMP if the player pressed JUMP KEY
if (key_jump && jump_enable > 0) {
	vspd -= 5.5;
	jump_enable = 0;
	state = STATE.JUMP;
}

// Changing to state JUMP if there is nothing beneath
if (!place_meeting(x, y + 1, obj_wall)) 
	state = STATE.JUMP;