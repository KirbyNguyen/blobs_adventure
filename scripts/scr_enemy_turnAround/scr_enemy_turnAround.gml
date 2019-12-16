/// @desc scr_enemy_turnAround(width, height)
/// @arg width
/// @arg height
///		Width is for how far ahead the game will check for a wall
///		Height is for how deep below the game will check for a wall

var width = argument[0];
var height = argument[1];

// Move to the oposite side when hit the wall
if (place_meeting(x + hspd, y, obj_wall))
	hspd *= -1;

// Move to the oposite side when there is no wall two blocks under
if (!place_meeting(x + width, y + height, obj_wall))
	hspd *= -1;