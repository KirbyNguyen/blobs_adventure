/// @desc state_onGround()

// Horizontal Movement
move = key_right - key_left;
hspd = move * walkspd;

// Setting the sprite
if (hspd == 0) {
	if (sprite_index != spr_blob_idle && sprite_index != spr_blob_idle_b)
		sprite_index = spr_blob_idle;
}
else {
	if (sprite_index != spr_blob_walk && sprite_index != spr_blob_walk_b)
		sprite_index = spr_blob_walk;
}