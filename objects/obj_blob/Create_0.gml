/// @description Variables Declaration

// STATE MACHINE NAME
enum STATE {
	ONGROUND,
	JUMP,
	ATTACK,
	RECOVER,
	DIZZY,
	HURT,
	DEATH
}

// CONSTANTS 
MAXHP = 5;
MAXSTAMINA = 5;
IMGSPD = 0.6;

// Setting stats
hp = MAXHP;
stamina = MAXSTAMINA;

// Movement variables
hspd = 0;
vspd = 0;
walkspd = 2.5;
grav = 0.2;

// Timer for the player to jump
jump_enable = 0;

// Setting the state
state = STATE.ONGROUND;

// Imagespeed
image_speed = IMGSPD;