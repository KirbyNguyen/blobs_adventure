/// @description Interacted with damage source

if (place_meeting(x, y, obj_blobHitBox) || place_meeting(x, y, obj_blobSpike))
	hp -= 1;
	
if (hp <= 0)
	state = STATE.DEATH;