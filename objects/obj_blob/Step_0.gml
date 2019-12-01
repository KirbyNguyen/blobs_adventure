/// @description State Machine

// Getting player's inputs
scr_getInput();

// Gravity
scr_gravity();

// Collision
scr_collision();

// STATE MACHINE
switch(state) {
	default:
		state_onGround();
}

// Flipping the sprite to the direction
if (hspd != 0) image_xscale = sign(hspd);