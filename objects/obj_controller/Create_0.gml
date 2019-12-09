/// @description Initialize controller

// STATE MACHINE NAME
enum STATE {
	ONGROUND,
	IDLE,
	WALK,
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