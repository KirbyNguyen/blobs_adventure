/// @desc flae_death()

// Changing the sprite
if (sprite_index != spr_flae_death) {
	sprite_index = spr_flae_death;
	image_speed = IMGSPD / 2;
}

// Knockback
scr_enemy_knockBack();