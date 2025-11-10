// Check player inputs
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_dash = keyboard_check_pressed(vk_lshift);

if hp = 0
{
	instance_destroy();	
	
}



//Caculate movement
var move = key_right - key_left;
hsp = move * walksp;

// Gravity
vsp = vsp + grv;

// Jumping
if ((key_jump) and (jumpcount > 0))
{
	vsp = -7;
	jumpcount = jumpcount - 1;
	audio_play_sound(Jump,1,0);
}


// reset jumpcount var if on ground
if (place_meeting(x,y+1,OWall)) and (jumpcount <= 0)
{
	jumpcount = jumpcountref;	
}

// Check if collision _ Horizontal
if (place_meeting(x+hsp,y,OWall))
{
	while (!place_meeting(x+sign(hsp),y,OWall))
	{
		hor_col_dir = sign(hsp);
		x = x + hor_col_dir;
	}
	hsp = 0;

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
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 0; else image_index = 1;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = SPlayer;
		
	}
	else 
	{
		sprite_index = SPlayerR;
	}
	
}

if (hsp != 0) image_xscale = sign(hsp);