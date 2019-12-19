/// @description Interacted with damage source
	
if (place_meeting(x, y, obj_blobHitBox) || place_meeting(x, y, obj_blobSpike)) {
	hp -= 1;
	var _instance = instance_nearest(x, y, obj_blobSpike);
	with (_instance) instance_destroy();
}
if (hp <= 0)
	state = STATE.DEATH;