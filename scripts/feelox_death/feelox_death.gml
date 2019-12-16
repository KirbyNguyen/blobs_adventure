/// @desc feelox_death()

// Changing the sprite
if (sprite_index != spr_feelox_dead) {
	sprite_index = spr_feelox_dead;
	image_speed = IMGSPD;
	if (tear == noone)
		tear = instance_create_layer(x, y - sprite_height, "Enemies", obj_tear);
} 
		
// Movement
scr_enemy_knockBack();