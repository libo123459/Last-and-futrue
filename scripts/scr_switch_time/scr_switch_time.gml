// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_switch_time(){
	
	if(obj_player_manage.player_num = 0)
	{		
		obj_player_manage.player_num = 1;
		instance_deactivate_object(obj_solid_past)
		instance_activate_object(obj_solid_future)		
		instance_deactivate_object(obj_player_past)
		instance_activate_object(obj_player_future)
		obj_broken_wall.sprite_index = spr_broken_wall
		obj_broken_wall_end.sprite_index = spr_broken_wall_end
		obj_broken.image_index = 0
		obj_broken.image_speed = .5;
	    obj_mushroom.sprite_index = spr_mushroom_2x
		obj_mushroom.image_index = 0
		obj_mushroom.image_speed = 1
	
	} else {
		obj_player_manage.player_num = 0;
		instance_deactivate_object(obj_solid_future)
		instance_activate_object(obj_solid_past)
		instance_deactivate_object(obj_player_future)
		instance_activate_object(obj_player_past)
		
		obj_broken_wall.sprite_index = spr_broken_wall_re
		obj_broken_wall_end.sprite_index = spr_broken_wall_end_re
		obj_broken.image_index = 0
		obj_broken.image_speed = .5;
		obj_mushroom.image_index = 0
		obj_mushroom.sprite_index = spr_mushroom_2x_re
		obj_mushroom.image_speed = .5
	}

	
}