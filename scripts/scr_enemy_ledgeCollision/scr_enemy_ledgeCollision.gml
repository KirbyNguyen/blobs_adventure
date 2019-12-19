/// @desc scr_enemy_ledgeCollision()

// Horizontal Collision
if (place_meeting(x + hspd, y, obj_ledge)) {
	// Slowly approaching the wall
	while (!place_meeting(x + sign(hspd), y, obj_ledge)) {
		x += sign(hspd);
	}
	hspd = 0;
}


// Vertical Collision
if (place_meeting(x, y + vspd, obj_ledge)) {
	// Slowly approaching the wall
	while (!place_meeting(x, y + sign(vspd), obj_ledge)) {
		y += sign(vspd);
	}
	vspd = 0;
}
