/// @desc flae_attack()

if (sprite_index != spr_flae_attack) {
	sprite_index = spr_flae_attack;
	image_speed = IMGSPD * 2;
}

hspd = lengthdir_x(walkspd, dir);
vspd = lengthdir_y(walkspd, dir);

// Getting damage
if (place_meeting(x, y, obj_blobHitBox) || place_meeting(x, y, obj_blobSpike))
	hp -= 1;


// If Blob is out of reach, stop chasing
if (distance > RADIUS)
	state = STATE.IDLE;