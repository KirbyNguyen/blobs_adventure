/// @description State Machine

// Getting player's inputs
scr_getInput();

// Horizontal Movement
// Only if Blob is on the ground or jumping
if (state == STATE.ONGROUND || state == STATE.JUMP) {
	move = key_right - key_left;
	hspd = move * walkspd; 
}

// Gravity
scr_gravity();

// Collision
scr_collision();

// Jump buffer
jump_enable -= 1;

// Reseting jump timer if Blob is on the ground
if (place_meeting(x , y + 1, spr_wall))
	jump_enable = room_speed * 2;
	
// STATE MACHINE
switch(state) {
	case STATE.JUMP:
		state_jump()
		break;
	default:
		state_onGround();
}

// Flipping the sprite to the direction
if (hspd != 0) image_xscale = sign(hspd);