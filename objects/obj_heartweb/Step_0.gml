/// @description State machine

// Damage Heartweb
event_inherited();

// Distance from the Heartweb to Blob
distance = distance_to_point(obj_blob.x, obj_blob.y);

// Decreasing the attack timer
attack_timer--;

// STATE MACHINE
switch (state) {
	case STATE.JUMP:
		heartweb_descend();
		break;
	case STATE.IDLE:
		heartweb_idle();
		break;
	case STATE.WALK:
		heartweb_walk();
		break;
	case STATE.ATTACK:
		heartweb_attack();
		break;
	case STATE.DEATH:
		heartweb_death();
		break;
}
	
// Gravity
if (state != STATE.JUMP || state == STATE.DEATH)
	scr_gravity();

// Collision and Movement
scr_enemy_ledgeCollision();
scr_collision();

// Making Heartweb turn to the right direction
if (state != STATE.DEATH)
	if (dir == 0) image_xscale = 1 else image_xscale = -1;