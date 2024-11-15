/// @desc draw score

if (room != room_menu) and (instance_exists(obj_player)) and (global.kills > 0)
{
	killtextscale = max(killtextscale * 0.95,1);
	draw_set_color(c_black);
	draw_set_font(fon_menu);
	draw_set_halign(fa_right);
	draw_set_valign(fa_top); 
	draw_text_transformed(RES_W-8,12,string(global.kills)+" blocknappings evaded",killtextscale,killtextscale,0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W-10,10,string(global.kills)+" blocknappings evaded",killtextscale,killtextscale,0);
	
}