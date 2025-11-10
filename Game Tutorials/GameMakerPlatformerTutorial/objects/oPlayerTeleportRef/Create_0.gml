/// @description Teleport player to new coords when level is created
if instance_exists(OPlayer)
{
	with(OPlayer)
	{
	
		x = other.x;
		y = other.y;
	}
	
}
else
{
	instance_create_layer(x,y,layer,OPlayer)
	GameInit()
}
