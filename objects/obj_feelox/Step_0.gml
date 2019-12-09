/// @description State machine

// Executing state machine
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
		break;
}

// Gravity
scr_gravity();

// Collision and movement
scr_collision();

// Decreasing the timer
state_timer -= 1;

// Flipping the sprites
if (hspd != 0) image_xscale = sign(hspd);