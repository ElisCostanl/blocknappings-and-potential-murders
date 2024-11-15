/// @desc die
screenshake(6,60);
audio_play_sound(sn_player_death,10,false);

game_set_speed(30,gamespeed_fps);
direction = point_direction(other.x,other.y,x,y);
hsp = lengthdir_x(6,direction);

 with (obj_gun) instance_destroy();  
 instance_destroy(); 
 
 game_set_speed(60,gamespeed_fps);
 SlideTransition(TRANS_MODE.GOTO,room);
 
 global.kills -= global.killsthisroom; 