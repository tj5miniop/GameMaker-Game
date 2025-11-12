/// @description Teleport player to new coords when level is created
if instance_exists(OPlayer)
{
	with(OPlayer)
	{
	
		x = other.x;
		y = other.y;
		instance_create_layer(x,y,"Gun",OGun);
	}
	
}
else
{
	instance_create_layer(x,y,"Gun",OGun);
	instance_create_layer(x,y,"Player",OPlayer);
	if not(instance_exists(OMusicPlayer))
	{
		instance_create_layer(x,y,layer,OMusicPlayer);	
		
	}
	GameInit()
}
