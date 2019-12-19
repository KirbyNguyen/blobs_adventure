/// @description State Machine

// Getting player's inputs
scr_getInput();

// Decreasing the timer
hurt_timer--; 
control_timer--;

// Horizontal Movement
if (has_control) move = key_right - key_left;

// Only if Blob is on the ground or jumping
if ((state == STATE.ONGROUND || state == STATE.JUMP))
	hspd = move * walkspd; 

// If Blob is on air, move horizontally at a slower rate
// If Blob is on ground, she slowly stops
if (!place_meeting(x, y + 1, obj_wall) && !place_meeting(x, y + 1, obj_ledge)) 
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
if (state != STATE.DEATH) {
	scr_blob_ledgeCollision();
	scr_collision();
}

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
	case STATE.HURT:
		state_hurt();
		break;
	case STATE.DEATH:
		state_death();
		break;
	default:
		state_onGround();
}

// Got hit by enemies
if (state != STATE.DEATH) {
	if (place_meeting(x, y, obj_enemy) 
		&& hurt_timer <= 0
		&& !instance_exists(obj_blobHitBox)) {
		
		// Damage source and the direction
		var _dmg_source = instance_nearest(x, y, obj_enemy);
		var _dir = point_direction(_dmg_source.x, _dmg_source.y, x, y);
		// Decreasing hp
		if (_dmg_source.image_alpha == 1) {
				hp--;
	
			// Setting the speed
			hspd = lengthdir_x(walkspd * 1.5, _dir);
			vspd = lengthdir_x(walkspd * 1.5, _dir);
	
			if (hp <= 0) {
				vspd = -10;
				state = STATE.DEATH;
			}
			else {
		
				// Setting the timer
				hurt_timer = room_speed * 2;
				control_timer = room_speed / 2;
		
				if (sprite_index != spr_blob_death)
					sprite_index = spr_blob_death;

				if (control_timer > 0)
					state = STATE.HURT;;
			}
		}
	}
}

// Flashing sprite
if (hurt_timer <= 0) image_alpha = 1;
else if (hurt_timer % 9 == 0) image_alpha = 1 else image_alpha = 0.5;

// Has control or not
if (control_timer <= 0 && state != STATE.DEATH) has_control = true else has_control = false;

// Flipping the sprite to the direction
if (hspd != 0) image_xscale = sign(hspd);