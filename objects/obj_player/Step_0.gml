//get plyaer input//
if (hascontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A")); 
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D")); 
	key_jump = keyboard_check_pressed(vk_space); 
}
else 
{
	key_right = 0; 
	key_left = 0; 
	key_jump = 0; 
}

//calculate movement//
var _move = key_right - key_left; 

hsp = (_move * walksp) + gunkickx; 
gunkickx = 0;

vsp = (vsp + grv) + gunkicky;
gunkicky = 0;

canjump -= 1; 
if (canjump > 0) and (key_jump)
{
	vsp = -7; 
	canjump = 0; 
	audio_play_sound(sn_landing,4,false);
} 

//horizontal collision//
if (place_meeting(x+hsp,y,obj_wall))
{
		while (!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x = x + sign(hsp); 
		}
		hsp = 0; 
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
		canjump = 10; 
}
y = y + vsp 

//animation//
if (hsp != 0) image_xscale = sign(hsp);
