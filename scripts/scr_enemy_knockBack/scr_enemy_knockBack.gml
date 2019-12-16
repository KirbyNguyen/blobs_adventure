/// @desc scr_enemy_knockBack()

// Direction
dir = point_direction(obj_blob.x, obj_blob.y, x, y);
	
// Setting the speed
hspd = lengthdir_x(walkspd, dir);
vspd = lengthdir_x(walkspd, dir);

// Flipping the sprite to facing Blob
image_xscale = - sign(hspd);

// Destroy the instance when it is completely faded away
if (image_alpha < 0) {
	instance_destroy();
	
	// Adding scores
	obj_controller.scores += scores_given;
}
else 
	image_alpha -= 0.1;
	
