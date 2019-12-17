/// @description Insert description here

// Gravity
scr_gravity();

// Movement
x += hspd;
y += vspd;

// Slowly turning down
if (image_xscale == 1)
	image_angle += 2;
else 
	image_angle -= 2;
	
// Flipping the sprite
if (hspd != 0) image_xscale =  - sign(hspd);