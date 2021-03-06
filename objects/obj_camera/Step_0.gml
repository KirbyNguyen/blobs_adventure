/// @description Updating camera

// Update destination
if (instance_exists(follow)) { // TODO: if the player is dead, fix camera
	xTo = follow.x;
	yTo = follow.y;
	
	if (follow.state == STATE.DEATH) {
		x = xTo;
		y = yTo;
	}
}

// Update project position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

// Make sure the camera does not go outside the room
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if (layer_exists("Mountains")) {
	layer_x("Mountains", x / 2);
}

if (layer_exists("Mountains_2")) {
	layer_x("Mountains_2", x / 3);
}

if (layer_exists("Mountains_3")) {
	layer_x("Mountains_3", x / 4);
}

if (layer_exists("Trees")) {
	layer_x("Trees", x / 4);
}