/// @description Insert description here

// Damage Feelox
event_inherited();

// STATE MACHINE
switch (state) {
	case STATE.IDLE:
		feelox_idle();
		break;
	case STATE.WALK:
		feelox_walk();
		break;
	case STATE.JUMP:
		feelox_fall();
		break;
	case STATE.DEATH:
		feelox_death();
		break;
}

// Gravity
scr_gravity();

// Collision and Movement
scr_collision();

// Making Feelox turn to the right direction
if (state != STATE.DEATH)
	if (dir == 0) image_xscale = 1 else image_xscale = -1;