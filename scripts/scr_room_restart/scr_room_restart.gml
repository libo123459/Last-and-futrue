// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_room_restart(){
	if(room_get_name(room) != "Room1")
	{		
		instance_destroy(obj_lost_jump)
	} else {
		if(!instance_exists(obj_lost_jump))
		{			
			instance_create_layer(432,320,"Instances",obj_lost_jump)
		}
	}
	
	var n_box = instance_number(obj_box);
	for(var i = 0;i<n_box;i++)
	{
		var obj_b = instance_find(obj_box,i)
		obj_b.x = obj_b.xstart;
		obj_b.y = obj_b.ystart;
		obj_b.xpos_switch =  obj_b.xstart;
		obj_b.ypos_switch = obj_b.ystart
		obj_b.fixed = false;
	}	
	
	var n_L_box = instance_number(obj_box_little);
	for(var i = 0;i<n_box;i++)
	{
		var obj_b = instance_find(obj_box_little,i)
		obj_b.x = obj_b.xstart;
		obj_b.y = obj_b.ystart;
		obj_b.xpos_switch = obj_b.xstart;
		obj_b.ypos_switch = obj_b.ystart
		obj_b.fixed = false;
	}	
	
	instance_activate_all();
	obj_player_past.x = obj_player_past.xstart
	obj_player_past.y = obj_player_past.ystart
	obj_player_past.jumps_ex = 1;
	
	obj_player_future.x = obj_player_future.xstart
	obj_player_future.y = obj_player_future.ystart
	obj_player_future.jumps_ex = 0;
	instance_destroy(obj_player_future_shadow)
	
	obj_gate_finish_future.image_alpha = 1
	if(room_get_name(room) = "Room1")
	{		
		obj_gate_finish_future.active = true;
	} else {
		obj_gate_finish_future.active = false;
	}
	obj_gate_finish_past.image_alpha = 0;	
	obj_gate_finish_past.active = true;
	
	var n_platform = instance_number(obj_solid_platform);
	for(var i = 0;i<n_platform;i++)
	{
		var obj_p = instance_find(obj_solid_platform,i)
		obj_p.x = obj_p.xstart;
		obj_p.y = obj_p.ystart;
		obj_p.touched = false;
	}
	
	var n_p = instance_number(obj_platform)
	for(var i = 0;i<n_p;i++)
	{
		var obj_p = instance_find(obj_platform,i)
		obj_p.image_index = 0
		obj_p.image_speed = 0;
	}
	scr_player_init();
	scr_background_switch()
	scr_mushroom_animate()
	scr_broken_wall_switch()
}