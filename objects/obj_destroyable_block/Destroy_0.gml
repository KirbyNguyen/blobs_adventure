/// @description Create particles

// Playing the sound
audio_sound_pitch(snd_block_destroy, choose(0.8, 1.0, 1.2));
audio_play_sound(snd_block_destroy, 3, false);

for (var i = 0; i <= irandom_range(5, 10); i++) {
	instance_create_layer(x + random_range(1, 28), 
				y + random_range(1, 28),
				"Projectiles", obj_explosion);
}