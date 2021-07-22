/// @description Insert description here
// You can write your code in this editor
if(a_up = true)
{
	image_alpha += .02
	if(image_alpha = 1)
	{
		a_up = false
		alarm[0] = room_speed * 1.5;
	}
}
if(a_down = true)
{
	image_alpha -= .02
	if(image_alpha = 0)
	{
		if(image_index = 6)
		{
			finish = true;
		} else {			
			image_index += 1
			a_down = false
			a_up = true;
		}
	}
}
if(finish = true)
{
	image_alpha -= .1
	if(image_alpha <= 0)
	{		
		if(!file_exists("save.sav"))
		{
			ini_open("save.save")
			ini_write_real("stage","num",1)
			ini_close();
		}
		room_goto_next()
	}
}