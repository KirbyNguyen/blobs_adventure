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
	
	// Change the direction
	if (dir == 0) dir = 180 else dir = 0;
	
	// Flip the movement speed
	hspd *= -1;
}