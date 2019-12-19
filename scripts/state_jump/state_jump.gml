/// @desc state_jump()

// Resetting the image_speed
image_speed = IMGSPD;

// Changing sprites
if (sprite_index != spr_blob_jump)
	sprite_index = spr_blob_jump;
	
// Making the sprite freeze
image_speed = 0;

// Changing the sprite depending on jumping up or falling down
if (sign(vspd) > 0) {
	image_index = 0;
} else {
	image_index = 1;
}

// Allow jump buffer
// If the player press jump after falling from a platform, Blob will still be able to jump
if (key_jump && jump_timer > 0) {
	vspd -= 5.5;
	jump_timer = 0;
}

// Change to ONGROUND if Blob is onground
if (place_meeting(x, y + 1, obj_wall) || place_meeting(x, y + 1, obj_ledge))
	state = STATE.ONGROUND;
	
	// Changing to state ATTACK if ATTACK KEY is pressed
if (key_attack && stamina > 0)
	state = STATE.ATTACK;