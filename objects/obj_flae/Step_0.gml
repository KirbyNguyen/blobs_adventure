/// @description State Machine

// Die when reach zero
if (hp <= 0)
	state = STATE.DEATH;

// Pointing to Blob
dir = point_direction(x, y, obj_blob.x, obj_blob.y);
distance = distance_to_object(obj_blob);

switch (state) {
	case STATE.IDLE:
		flae_idle();
		break;
	case STATE.ATTACK:
		flae_attack();
		break;
	case STATE.HURT:
		flae_hurt();
		break;
	case STATE.DEATH:
		flae_death();
		break;
}

// Movement
x += hspd;
y += vspd;