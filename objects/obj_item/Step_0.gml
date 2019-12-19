/// @description Collide with Blob

// Touch by Blob
if (place_meeting(x, y, obj_blob) && !collide) {
	path_end();
	
	// HP recovery
	obj_blob.hp += hp;
	
	// Giving the scores
	obj_controller.scores += score_given;
	
	collide = true;
}

if (collide) {
	y -= 0.75;
	image_alpha -= 0.05;
}

// Destroy the item
if (image_alpha <= 0)
	instance_destroy();