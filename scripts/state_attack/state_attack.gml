/// @desc state_attack()

// Only attack if not slipping through the ledge
if (!place_meeting(x, y, obj_ledge)) {
	// Changing the image_speed
	image_speed = IMGSPD + 0.75;
	
	// Changing sprite
	if (sprite_index != spr_blob_attack && control_timer <= 0) {
		sprite_index = spr_blob_attack;
		image_index = 0;
	}

	// Stopping animation and creates the hitbox
	if (image_index >= 4) {
		image_speed = 0;
		// Creating hit box
		if (!instance_exists(obj_blobHitBox))
			hitbox = instance_create_layer(x, y, "Attack", obj_blobHitBox);
		
		// Decreasing stamina
		stamina -= stamina_rate * 1.5;
	}

	// Change to ONGROUND or JUMP when release the attack key
	if (key_rAttack || stamina < 0) {
		if (instance_exists(obj_blobHitBox))
			with (hitbox)
				instance_destroy();
		state = STATE.RECOVER;
	}
}
// Go back to IDLE
else 
	state = STATE.IDLE;