/// @desc heartweb_death()

// Changing sprites
if (sprite_index != spr_heartweb_death_air && sprite_index != spr_heartweb_death_ground) {
	// Change to the correct sprite
	if (sprite_index == spr_heartweb_down)
		sprite_index = spr_heartweb_death_air;
	else 
		sprite_index = spr_heartweb_death_ground;
		
	// Create tears
	if (tear == noone)
		tear = instance_create_layer(x, y, "Enemies", obj_tear);
}

// Movement
scr_enemy_knockBack();