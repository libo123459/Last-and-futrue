// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_broken_wall_switch()
{	
	if(instance_exists(obj_broken))
	{
		
	if(instance_number(obj_broken_wall)!= 0)
	{		
		if(obj_player_manage.player_num = 1)
		{			
			obj_broken_wall.sprite_index = spr_broken_wall				
		} else {
			obj_broken_wall.sprite_index = spr_broken_wall_re
		}
	}
	if(instance_number(obj_broken_wall_end)!= 0)
	{		
		if(obj_player_manage.player_num = 1)
		{			
			obj_broken_wall_end.sprite_index = spr_broken_wall_end			
		} else {
			obj_broken_wall_end.sprite_index = spr_broken_wall_end_re
		}
	}
	if(instance_number(obj_broken_wall_h)!= 0)
	{	
		if(obj_player_manage.player_num = 1)
		{			
			obj_broken_wall_h.sprite_index = spr_broken_wall_h
		} else {
			obj_broken_wall_h.sprite_index = spr_broken_wall_h_re
		}
	}
	if(instance_number(obj_broken_wall_end_h)!= 0)
	{	
		if(obj_player_manage.player_num = 1)
		{			
			
			obj_broken_wall_end_h.sprite_index = spr_broken_wall_end_h
		} else {
			
			obj_broken_wall_end_h.sprite_index = spr_broken_wall_end_h_re
		}
	}
	
		obj_broken.image_index = 0
		obj_broken.image_speed = .5;
	}
}