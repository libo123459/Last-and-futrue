// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_switch_time(){
	
	if(obj_player_manage.player_num = 0)//past to now
	{		
		//角色相关
		obj_player_manage.player_num = 1;
		instance_destroy(obj_player_future_shadow)		
		instance_create_layer(obj_player_past.x,obj_player_past.y,"Instances",obj_player_past_shadow)
		obj_gate_finish_past.image_alpha = 0;
		obj_gate_finish_future.image_alpha = 1;
		
		//环境物体		
		var n_box = instance_number(obj_box)
		for(var i = 0; i<n_box; i++)
		{
			var obj_b = instance_find(obj_box,i)
			obj_b.xpos_switch = obj_b.x
			obj_b.ypos_switch = obj_b.y
		}
		
		instance_deactivate_object(obj_solid_past)
		instance_activate_object(obj_solid_future)		
		instance_deactivate_object(obj_player_past)
		instance_activate_object(obj_player_future)
		
		//背景
		//特殊物体		
		if(instance_number(obj_mushroom)!= 0)
		{			
			obj_mushroom.sprite_index = spr_mushroom_2x
			obj_mushroom.image_index = 0
			obj_mushroom.image_speed = 1
		}	
	} else {
		obj_player_manage.player_num = 0; // to past
		instance_create_layer(obj_player_future.x,obj_player_future.y,"Instances",obj_switch_sfx)
		instance_create_layer(obj_player_future.x,obj_player_future.y,"Instances",obj_player_future_shadow)
		if(obj_gate_finish_past.active = true)
		{			
			obj_gate_finish_past.image_alpha = 1;
		} else {
			obj_gate_finish_past.image_alpha = 0;
		}
		obj_gate_finish_future.image_alpha = 0;		
		
		instance_deactivate_object(obj_solid_future)
		instance_activate_object(obj_solid_past)
		instance_deactivate_object(obj_player_future)
		instance_activate_object(obj_player_past)	
		
		if(instance_number(obj_mushroom)!= 0)
		{			
			obj_mushroom.image_index = 0
			obj_mushroom.sprite_index = spr_mushroom_2x_re
			obj_mushroom.image_speed = .5
		}
		
		var n_box = instance_number(obj_box)
		for(var i = 0; i<n_box; i++)
		{
			var obj_b = instance_find(obj_box,i)
			obj_b.x = obj_b.xpos_switch
			obj_b.y = obj_b.ypos_switch
		}
	}
	
	scr_background_switch();
	scr_broken_wall_switch();
	obj_player.state = scr_appear_state
	
}