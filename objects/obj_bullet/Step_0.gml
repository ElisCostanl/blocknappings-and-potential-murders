x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

if (place_meeting(x,y,obj_pshootable))
{
	with (instance_place(x,y,obj_pshootable))
	{
		hp--;
		flash = 3; 
	}
	instance_destroy();
}


if (place_meeting(x,y,obj_wall)) and (image_index != 0) 
{
	while (place_meeting(x,y,obj_wall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}
	spd = 0; 
	instance_change(obj_hitspark,true);
	layer_add_instance("Tiles_1",id);
	depth -= 1;  
	
}