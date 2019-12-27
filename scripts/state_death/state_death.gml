/// @desc state_death()

sprite_index = spr_blob_death;
image_alpha = 1;

vspd += grav;
y += vspd; // Falling down

if (y > view_yport[0] + view_hport[0]) {
	
	if (life == 1)
		game_restart();
	else {
		x = obj_spawner.blobX;
		y = obj_spawner.blobY - 50;
		hp = MAXHP;
		life -= 1;
		control_timer = -10;
		state = STATE.IDLE;
		if (instance_exists(obj_blobHitBox))
			with (obj_blobHitBox) instance_destroy();
	}
}