/// @desc state_onGround()

// Horizontal Movement
move = key_right - key_left;
hspd = move * walkspd;

// Setting the sprite
if (hspd == 0)
	sprite_index = spr_blob_idle;
else
	sprite_index = spr_blob_walk;