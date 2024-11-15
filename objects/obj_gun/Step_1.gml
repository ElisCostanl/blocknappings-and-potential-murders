x = obj_player.x; 
y = obj_player.y; 

image_angle = point_direction(x,y,mouse_x,mouse_y); 

firingdelay = firingdelay - 1; 
recoil = max(0,recoil - 1); 

if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
	recoil = 4; 
	firingdelay = 5; 
	screenshake(2,10);
	audio_play_sound(sn_gun_shoot,5,false);
	with (instance_create_layer(x,y,"bullets",obj_bullet))
	{
		spd = 25; 
		direction = other.image_angle + random_range (-3,3);  
		image_angle = direction; 
	}
	with (obj_player)
	{
		gunkickx = lengthdir_x(1.5,other.image_angle-180);
		gunkicky = lengthdir_y(1,other.image_angle-180);
		
		
	}
}

x = x - lengthdir_x(recoil,image_angle); 
y = y - lengthdir_y(recoil,image_angle); 

if (image_angle > 90) and (image_angle <270)
{
	image_yscale = -1; 
}
else 
{
	image_yscale = 1; 
}