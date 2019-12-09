/// @description Setting up the camera

cam = view_camera[0]; // Return the first camera
follow = obj_blob; // Set up the followed target

w = display_get_gui_width();
h = display_get_gui_height(); // GUI properties

view_w_half = camera_get_view_width(cam) * 0.5; // Half of the view width
view_h_half = camera_get_view_height(cam) * 0.5; // Half of the view height

xTo = xstart; // Where the camera should move to
yTo = ystart;

state = 0;
rec_alpha = 0;