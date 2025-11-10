if (done == 0)
{
	// Gravity
	vsp = vsp + grv;

	// Jumping



	// Check if collision _ Horizontal
	if (place_meeting(x+hsp,y,OWall))
	{
		while (!place_meeting(x+sign(hsp),y,OWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}

	x = x + hsp;

	// Check if collision - verticle
	if (place_meeting(x,y+vsp,OWall))
	{
		if (vsp > 0) 
		{
			done = 1;
			// For Animations image_index = 1;
		}
		while (!place_meeting(x,y+sign(vsp),OWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	y = y + vsp;

	if (hsp != 0) image_xscale = sign(hsp);
}