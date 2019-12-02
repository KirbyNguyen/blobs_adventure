/// @desc scr_createSpikes()

with(instance_create_layer(x, y + 7, "Attack", obj_blobSpike)) {
	speed = 5;
	direction = 0;
	image_angle = direction;
}

with(instance_create_layer(x, y, "Attack", obj_blobSpike)) {
	speed = 5;
	direction = 90;
	image_angle = direction;
}

with(instance_create_layer(x, y + 7, "Attack", obj_blobSpike)) {
	speed = 5;
	direction = 180;
	image_angle = direction;
}

with(instance_create_layer(x, y, "Attack", obj_blobSpike)) {
	speed = 5;
	direction = -90;
	image_angle = direction;
}