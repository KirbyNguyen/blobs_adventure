/// @desc feelox_death()

// Changing the sprite
if (sprite_index != spr_feelox_dead) {
	sprite_index = spr_feelox_dead;
	
	// Creating tears
	var tear = instance_create_layer(x, y - sprite_height, "Projectiles", obj_tear);
	tear.creator = self;
		
}

// Knocking back
scr_enemy_knockBack();