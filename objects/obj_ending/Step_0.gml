//move player towards center
layer_x("Title",min(layer_get_x("title")+1,RES_W * 0.5 - 32));

//progress text
letters += spd;
text = string_copy(endtext[currentline],1,floor(letters));

//next line
if (letters >= length) and (keyboard_check_pressed(vk_anykey))
{
	if (currentline+1 == array_length(endtext))
	{
		SlideTransition(TRANS_MODE.RESTART)
	}
	else 
	{
		currentline++;
		letters = 0;
		length = string_length(endtext[currentline]);
	}
}
