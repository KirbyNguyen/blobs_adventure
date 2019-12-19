/// @desc state_jump()

// Resetting the image_speed
image_speed = IMGSPD;

// Changing sprites
if (sprite_index != spr_blob_jump && control_timer <= 0)
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
if (place_meeting(x, y + 1, obj_wall) || place_meeting(x, y + 1, obj_ledge)) {
	
	// Playing the sound
	audio_sound_pitch(snd_blob_land, choose(1.0, 1.2, 1.4));
	audio_play_sound(snd_blob_land, 4, false);

	state = STATE.ONGROUND;
}
	// Changing to state ATTACK if ATTACK KEY is pressed
if (key_attack && stamina > 0)
	state = STATE.ATTACK;