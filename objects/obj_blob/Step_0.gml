/// @description State Machine

// Getting player's inputs
scr_getInput();

// Horizontal Movement
move = key_right - key_left;
// Only if Blob is on the ground or jumping
if ((state == STATE.ONGROUND || state == STATE.JUMP))
	hspd = move * walkspd; 

// If Blob is on air, move horizontally at a slower rate
// If Blob is on ground, she slowly stops
if (!place_meeting(x, y + 1, obj_wall) || !place_meeting(x, y + 1, obj_ledge)) 
	hspd = move * walkspd / 1.5;
else 
	hspd *= FRACTION;

// Stamina recovery
if (stamina_timer > -1) 
	stamina_timer -= 1; // Countdown to be able to recover stamina

// Recovering stamina when the timer is less than 0
if (stamina_timer < 0 && 
state != STATE.ATTACK && state != STATE.RECOVER) {
	// If stamina is less than MAXSTAMINA, add more to it
	if (stamina < MAXSTAMINA)
		if (state == STATE.DIZZY)
			stamina += stamina_rate * 0.8;
		else
			stamina += stamina_rate;

	// If stamina is greater than MAXSTAMINA, then set equal to that
	if (stamina >= MAXSTAMINA) 
		stamina = MAXSTAMINA;
}

// Make sure HP never reached MAXHP
if (hp > MAXHP) hp = MAXHP;

// Gravity
scr_gravity();
	
// Collision and movement
scr_blob_ledgeCollision();
scr_collision();

// Jump buffer
jump_timer -= 1;

// Reseting jump timer if Blob is on the ground
if (place_meeting(x , y + 1, obj_wall) || place_meeting(x , y + 1, obj_ledge))
	jump_timer = room_speed * 2;
	
// STATE MACHINE
switch(state) {
	case STATE.JUMP:
		state_jump()
		break;
	case STATE.ATTACK:
		state_attack();
		break;
	case STATE.RECOVER:
		state_recover();
		break;
	case STATE.DIZZY:
		state_dizzy();
		break;
	default:
		state_onGround();
}

// Flipping the sprite to the direction
if (hspd != 0) image_xscale = sign(hspd);