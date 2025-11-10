// Gun Logic
x = OPlayer.x + 1;
y = OPlayer.y + 10;

image_angle = point_direction(x,y,mouse_x,mouse_y)
firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);
