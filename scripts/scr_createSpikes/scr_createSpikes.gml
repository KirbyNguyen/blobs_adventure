/// @desc scr_createSpikes()

// Playing sound effect
audio_sound_pitch(snd_blob_attack, choose(0.8, 1.0, 1.2));
audio_play_sound(snd_blob_attack, 4, false);
	
with(instance_create_layer(x, y + 7, "Attack", obj_blobSpike)) {
	speed = 5;
	direction = 0;
	image_angle = direction;
}

with(instance_create_layer(x, y, "Attack", obj_blobSpike)) {
	speed = 5;
	direction = 90;
	image_angle = direction;
}

with(instance_create_layer(x, y + 7, "Attack", obj_blobSpike)) {
	speed = 5;
	direction = 180;
	image_angle = direction;
}

with(instance_create_layer(x, y, "Attack", obj_blobSpike)) {
	speed = 5;
	direction = -90;
	image_angle = direction;
}