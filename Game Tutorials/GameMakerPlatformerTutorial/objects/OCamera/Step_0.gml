/// @description Update Camera

// Update Destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y - 250;
}

// Update object position
x += (xTo -x) / 15;
y += (yTo - y) / 35;

//Restrict camera to not be outside room
x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_width-view_h_half);


//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);	

