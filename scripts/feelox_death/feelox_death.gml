/// @desc feelox_death()

// Changing the sprite
if (sprite_index != spr_feelox_dead) {
	sprite_index = spr_feelox_dead;
	image_speed = IMGSPD;
	if (tear == noone)
		tear = instance_create_layer(x, y - sprite_height, "Enemies", obj_tear);
} 
		
// Movement
var dir = point_direction(obj_blob.x, obj_blob.y, x, y);
hspd = lengthdir_x(walkspd * 0.75, dir); 
vspd = lengthdir_y(walkspd * 0.05, dir) - walkspd * 0.05;
if (sign(hspd) != 0) {
	image_xscale = sign(hspd);
	tear.image_xscale = -sign(hspd);
	tear.x += hspd;
	tear.y += vspd;
}

// Slowly fades away
if (image_alpha > 0) {
	image_alpha -= 0.15;
	tear.image_alpha = image_alpha;
}
// Stop at the last frame
if (image_index >= 2) 
	image_speed = 0;
			
// Destroy the instance
if (image_alpha <= 0) {
	obj_controller.scores += scores_given;
	if (tear != noone)
		with (tear)
			instance_destroy();
	instance_destroy();
}