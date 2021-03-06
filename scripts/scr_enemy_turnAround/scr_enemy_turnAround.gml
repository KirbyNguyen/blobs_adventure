/// @desc scr_enemy_turnAround(width, height)
/// @arg width
/// @arg height

var width = argument[0];
var height = argument[1];

// Turn around if hit the wall
if (place_meeting(x + hspd, y, obj_wall)) {
	
	// Change the direction
	if (dir == 0) dir = 180 else dir = 0;
	
	// Flip the movement speed
	hspd *= -1;
}

// Turn around if there is no wall below them on the edge
if (!place_meeting(x + width, y + height, obj_wall)) {
	
	// If there is no ledge ahead, turn around
	if (!place_meeting(x + width, y + height, obj_ledge)) {
		// Change the direction
		if (dir == 0) dir = 180 else dir = 0;
	
		// Flip the movement speed
		hspd *= -1;
	}
}

// Check if there is no ledge up ahead
if (!place_meeting(x + width, y + height, obj_ledge)) {
		
	// If there is no wall upahead, turn around
	if (!place_meeting(x + width + 5, y + height, obj_wall)) {
		// Change the direction
		if (dir == 0) dir = 180 else dir = 0;
	
		// Flip the movement speed
		hspd *= -1;
	}
}
