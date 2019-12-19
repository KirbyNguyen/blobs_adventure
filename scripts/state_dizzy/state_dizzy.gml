/// @desc state_dizzy()

// Change image_speed
image_speed = IMGSPD / 1.5;

// Changing sprites
if (control_timer <= 0) {
	if (sprite_index != spr_blob_dizzy || sprite_index != spr_blob_dizzy_a)
		if (place_meeting(x, y + 1, obj_wall))
			sprite_index = spr_blob_dizzy;
		else if (!place_meeting(x, y + 1, obj_wall)) 
			sprite_index = spr_blob_dizzy_a;
}

// Changing back to normal state
if (stamina >= 4) {
	// If the Blob is on the ground, change to ONGROUND
	if (place_meeting(x, y + 1, obj_wall) || place_meeting(x, y + 1, obj_ledge))
		state = STATE.ONGROUND;
	// If the Blob is in air, change to JUMP
	else if (!place_meeting(x, y + 1, obj_wall) && !place_meeting(x, y + 1, obj_ledge))
		state = STATE.JUMP;
}