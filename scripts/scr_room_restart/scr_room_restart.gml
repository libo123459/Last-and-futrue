// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_room_restart(){
	instance_destroy(obj_lost_jump)
	instance_destroy(obj_lost_jump_kid)
	if(instance_exists(obj_switch_future))
	{		
		obj_switch_future.image_index = 1;
	}
	if(instance_exists(obj_switch_past))
	{
		obj_switch_past.image_index = 0;
	}
	var n_box = instance_number(obj_box);
	for(var i = 0;i<n_box;i++)
	{
		var obj_b = instance_find(obj_box,i)
		obj_b.x = obj_b.xstart;
		obj_b.y = obj_b.ystart;
		
	}
	
	instance_activate_all();
	obj_player_past.x = obj_player_past.xstart
	obj_player_past.y = obj_player_past.ystart
	obj_player_past.jumps_ex = 1;
	
	obj_player_future.x = obj_player_future.xstart
	obj_player_future.y = obj_player_future.ystart
	obj_player_future.jump_height = -6;
	
	scr_player_init();
}