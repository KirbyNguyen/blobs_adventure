/// @description Initialize controller

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

// Setting scores and timer
timer = 0;
scores = 0;