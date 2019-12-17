/// @desc heartweb_attack()

// Changing the sprite
if (sprite_index != spr_heartweb_attack) {
	sprite_index = spr_heartweb_attack;
	
	// Flipping the sprite
	if (dir == 0) image_xscale = 1 else image_xscale = -1;
}

	
// At the end of animation, move back to state IDLE
if (image_index >= 3) {
	
	// Creating the projectile web
	if (dir == 0) {
		var projectile = instance_create_layer(x - 17, y - 10, "Projectiles", obj_heartweb_projectile);
		projectile.hspd = random_range(2, 4);
	}
	else if (dir == 180) {
		var projectile = instance_create_layer(x + 17, y - 10, "Projectiles", obj_heartweb_projectile)
		projectile.hspd = - random_range(2, 4);
	}
	
	// The web goes up
	with (projectile) {
		vspd = -3;
	}
	
	// Setting the attack timer
	attack_timer = room_speed * irandom_range(1, 2);
	
	// Changing STATE
	state = STATE.IDLE;
}