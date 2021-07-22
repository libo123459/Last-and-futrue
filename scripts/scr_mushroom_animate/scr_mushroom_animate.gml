// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_mushroom_animate(){
	if(obj_player_manage.player_num = 1)
	{		
		if(instance_number(obj_mushroom)!= 0)
		{			
			obj_mushroom.sprite_index = spr_mushroom_2x
			obj_mushroom.image_index = 0
			obj_mushroom.image_speed = 1
		}	
	} else {
		if(instance_number(obj_mushroom)!= 0)
		{			
			obj_mushroom.image_index = 0
			obj_mushroom.sprite_index = spr_mushroom_2x_re
			obj_mushroom.image_speed = .5
		}
	}
}