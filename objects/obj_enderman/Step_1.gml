if (hp <= 0)
{
	screenshake(6,25);
	audio_play_sound(sn_enderman_dead,10,false);
	if (instance_exists(obj_player))
	{
		global.kills++; 
		global.killsthisroom++;
		with (obj_game) killtextscale = 2; 
	}
	instance_destroy(); 
}