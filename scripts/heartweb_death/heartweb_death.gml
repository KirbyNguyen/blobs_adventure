/// @desc heartweb_death()

// Changing the sprite
if (sprite_index != spr_heartweb_death_air && spr_heartweb_death_ground) {
	
	if (sprite_index == spr_heartweb_down) {
		sprite_index = spr_heartweb_death_air;
		
		// Creating tears
		var tear = instance_create_layer(x, y + 15, "Projectiles", obj_tear);
		tear.creator = self;
	}
	else if (sprite_index == spr_heartweb_walk || 
			sprite_index == spr_heartweb_idle ||
			sprite_index == spr_heartweb_attack) {
		sprite_index = spr_heartweb_death_ground;
		
		// Creating tears
		var tear = instance_create_layer(x, y - 7, "Projectiles", obj_tear);
		tear.creator = self;
	}
	
	
}

// Knocking back
scr_enemy_knockBack();