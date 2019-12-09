/// @description State machine

// Change STATE when got damage
event_inherited();

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
		feelox_death();
		break;
}

// Gravity
scr_gravity();

// Collision and movement
scr_collision();

// Decreasing the timer
state_timer -= 1;

// Flipping the sprites
if (hspd != 0)
	if (state != STATE.DEATH)
		image_xscale = sign(hspd);
	else
		image_xscale = -sign(hspd);