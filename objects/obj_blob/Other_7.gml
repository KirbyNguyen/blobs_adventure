/// @description Smoother animation transistion

// Blinking animation for standing still
if (sprite_index == spr_blob_idle)
	sprite_index = choose(spr_blob_idle, spr_blob_idle_b);
	
if (sprite_index == spr_blob_idle_b)
	sprite_index = choose(spr_blob_idle, spr_blob_idle, spr_blob_idle_b);
	
// Blinking animation for walking
if (sprite_index == spr_blob_walk)
	sprite_index = choose(spr_blob_walk, spr_blob_walk_b);
	
if (sprite_index == spr_blob_walk_b)
	sprite_index = choose(spr_blob_walk, spr_blob_walk, spr_blob_walk_b);