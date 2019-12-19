/// @desc scr_collision()

// Horizontal Collision
if (place_meeting(x + hspd, y, obj_wall)) {
	// Slowly approaching the wall
	while (!place_meeting(x + sign(hspd), y, obj_wall)) {
		x += sign(hspd);
	}
	hspd = 0;
}

x += hspd; // Changing x-position

// Vertical Collision
if (place_meeting(x, y + vspd, obj_wall)) {
	// Slowly approaching the wall
	while (!place_meeting(x, y + sign(vspd), obj_wall)) {
		y += sign(vspd);
	}
	vspd = 0;
}

y += vspd; // Changing y-position