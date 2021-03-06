/// @desc state_recover()
	
// Changing the image_speed
image_speed = IMGSPD + 0.75;
	
// Changing sprite
if (sprite_index != spr_blob_recover && control_timer <= 0) {
	sprite_index = spr_blob_recover;
	image_index = 0;
}

// Changing state after finishing recover animation
if (image_index + 1 > 4) {
	if (stamina < 0) {
		state = STATE.DIZZY;
		scr_createSpikes(); // Bursts out spikes in four direction
	}
	else if (place_meeting(x, y + 1, obj_wall) || place_meeting(x, y + 1, obj_ledge)) 
		state = STATE.ONGROUND;
	else if (!place_meeting(x, y + 1, obj_wall) && !place_meeting(x, y + 1, obj_ledge))
		state = STATE.JUMP;
		
	// Set the timer for recover rate
	stamina_timer = room_speed;
}
