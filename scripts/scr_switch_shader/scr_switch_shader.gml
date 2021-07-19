// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_switch_shader(){
	if(obj_player_manage.player_num = 1)
	{
		if(obj_shader.image_alpha = 0)
		{					
			obj_shader.image_alpha += 1
		}
	} else {
		if(obj_shader.image_alpha > 0)
		{					
			obj_shader.image_alpha -= 1
		}
	}
}