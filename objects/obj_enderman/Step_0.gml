vsp = vsp + grv

//dont walk off edges
if (grounded) and (afraid_of_heigths) and (!place_meeting(x+hsp,y+1,obj_wall))
{
	hsp = -hsp; 
}

//horizontal collision//
if (place_meeting(x+hsp,y,obj_wall))
{
		while (!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x = x + sign(hsp); 
		}
		hsp = -hsp; 
}
x = x + hsp 

//vertical collision//
if (place_meeting(x,y+vsp,obj_wall))
{
		while (!place_meeting(x,y+sign(vsp),obj_wall))
		{
			y = y + sign(vsp); 
		}
		vsp = 0; 
}
y = y + vsp 

//animation//
if (!place_meeting(x,y+1,obj_wall))
{
	grounded = false; 
	sprite_index = spr_enderman_air; 
	image_speed = 0; 
	if (sign(vsp) > 0) image_index = 1; else image_index = 0; 
}
else 
{
	grounded = true; 
	if (sprite_index == spr_enderman_air) audio_play_sound(sn_landing,4,false);
	image_speed = 1; 
	if (hsp = 0) 
	{
		sprite_index = spr_enderman; 
	}
	else 
	{
		sprite_index = spr_enderman_walking; 
	}
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size; 