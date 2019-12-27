/// @description Collide with Blob

// Touch by Blob
if (place_meeting(x, y, obj_blob) && !collide) {
	path_end(); // Stop moving
	
	// Playing the sound
	audio_sound_pitch(snd_extra_life, choose(0.8, 1.0));
	audio_play_sound(snd_extra_life, 3, false);
	
	// Give one extra life
	obj_blob.life += 1;
	
	collide = true;
}

if (collide) {
	y -= 0.75;
	image_alpha -= 0.05;
}

// Destroy the item
if (image_alpha <= 0)
	instance_destroy();