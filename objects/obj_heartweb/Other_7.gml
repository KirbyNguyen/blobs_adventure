/// @description Create web

// Only for attack animation
if (state == STATE.ATTACK) {
	instance_create_layer(x, y, "Enemies", obj_heartweb_projectile);
	state = STATE.IDLE;
}