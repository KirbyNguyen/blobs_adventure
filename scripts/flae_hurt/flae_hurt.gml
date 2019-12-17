/// @desc flae_hurt()

sprite_index = spr_flae_attack;

// Flashing sprite
if (hurt_timer % 9 == 0) image_alpha = 1 else image_alpha = 0;

// Increasing the timer
hurt_timer++;

// Setting speed
if (obj_blob.x < x) hspd = 0.35 else hspd = -0.35;
if (obj_blob.y < y) vspd = 0.35 else vspd = -0.35;

// After two minutes, reset
if (hurt_timer >= room_speed) {
	hurt_timer = 0;
	image_alpha = 1;
	
	chase = true;
	
	// Switch to state ATTACK
	if (distance <= RADIUS)
		state = STATE.ATTACK;
	// Switch to state IDLE
	else 
		state = STATE.IDLE;
}