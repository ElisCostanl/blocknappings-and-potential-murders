/// @desc GUI/vars/menu setup 
#macro SAVEFILE "save.sav"

gui_width = display_get_gui_width();
gui_height = display_get_gui_height(); 
gui_margin = 32; 

menu_x = gui_width +200; 
menu_y = gui_height - gui_margin; 
menu_x_target = gui_width - gui_margin
menu_speed = 25; //lower is faster
menu_font = fon_menu; 
menu_itemheight = font_get_size(fon_menu); 
menu_committed = -1; 
menu_control = true; 

menu[2] = "new game";
menu[1] = "continue";
menu[0] = "quit"; 

menu_items = array_length(menu);

menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items); 

menu_cursor =  2; 