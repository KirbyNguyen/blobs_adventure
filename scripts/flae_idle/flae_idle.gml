/// @desc flae_idle()

// Changing the sprite
if (sprite_index != spr_flae_idle) {
	sprite_index = spr_flae_idle;
	image_speed = IMGSPD / 2;
	hspd = 0;
	vspd = 0;
}

// Getting damage
if (place_meeting(x, y, obj_blobHitBox) || place_meeting(x, y, obj_blobSpike)) {
	hp -= 1;
	state = STATE.HURT;
}

// Start chase again
if (chase && distance < RADIUS)
	state = STATE.ATTACK;