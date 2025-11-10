/// @description Shoot
// You can write your code in this editor

if (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 18;
	with (instance_create_layer(x,y,"Bullets",OBullet))
	{
		audio_play_sound(Shoot,1,0);
		speed = 32;
		direction = other.image_angle + random_range(-2,2);
		image_angle = direction
	}
	
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale= 1;
}