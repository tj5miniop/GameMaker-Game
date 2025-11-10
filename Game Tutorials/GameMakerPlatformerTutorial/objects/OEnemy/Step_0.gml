// Gravity
vsp = vsp + grv;

// Check if facing and close to player 

if OPlayer.x > (x-250) and horcol = 0
{
	
	// check if direction matches 
	if OPlayer.direction = direction
	{
		// if so shoot 
		
		
		
	}
	
}


// Check if collision _ Horizontal
if (place_meeting(x+hsp,y,OWall))
{
	while (!place_meeting(x+sign(hsp),y,OWall))
	{
		x = x + sign(hsp);
		horcol = 1;
	}
	hsp = -hsp;
}

x = x + hsp;

// Check if collision - verticle
if (place_meeting(x,y+vsp,OWall))
{
	while (!place_meeting(x,y+sign(vsp),OWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;


// Animations
if (!place_meeting(x,y+1,OWall))
{
	sprite_index = SEnemyA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 0; else image_index = 1;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = SEnemy;
		
	}
	else 
	{
		sprite_index = SEnemyR;
	}
	
}

if (hsp != 0) image_xscale = sign(hsp);




