/// @description State Machine

// Got hit
event_inherited();


state_timer -= 1;
// STATE MACHINE
switch (state) {
	case STATE.JUMP:
		heartweb_down();
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
if (state != STATE.JUMP)
	scr_gravity();
else // Slowly descends
	vspd = grav * 1.5;

// Collision and movement
scr_collision();

// Turning the sprite
if (hspd != 0) image_xscale = sign(hspd);