/// @description Create particles

for (var i = 0; i <= irandom_range(5, 10); i++) {
	instance_create_layer(x + random_range(1, 28), 
				y + random_range(1, 28),
				"Projectiles", obj_explosion);
}