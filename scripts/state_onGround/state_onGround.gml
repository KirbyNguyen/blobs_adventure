/// @desc state_onGround()

// Resetting the image_speed
image_speed = IMGSPD;

// Setting the sprite
// Making sure Blob is not in the process of slipping through a ledge
if (has_control) {
	if (place_meeting(x, y, obj_ledge) && key_down)
		sprite_index = spr_blob_jump;
	else if (hspd == 0) {
		if (sprite_index != spr_blob_idle && sprite_index != spr_blob_idle_b)
			sprite_index = spr_blob_idle;
	}
	else {
		if (sprite_index != spr_blob_walk && sprite_index != spr_blob_walk_b)
			sprite_index = spr_blob_walk;
	}
}

// Changing state to JUMP if the player pressed JUMP KEY
if (key_jump && jump_timer > 0 && !place_meeting(x, y, obj_ledge)) {
	
	// Playing the sound
	audio_sound_pitch(snd_blob_jump, choose(0.8, 1.0, 1.2));
	audio_play_sound(snd_blob_jump, 4, false);
	
	vspd -= 5.5;
	jump_timer = 0;
	state = STATE.JUMP;
}

// Changing to state JUMP if there is nothing beneath
if (!place_meeting(x, y + 1, obj_wall) && !place_meeting(x, y + 1, obj_ledge)) 
	state = STATE.JUMP;
	
// Changing to state ATTACK if ATTACK KEY is pressed
if (key_attack && stamina > 0)
	state = STATE.ATTACK;