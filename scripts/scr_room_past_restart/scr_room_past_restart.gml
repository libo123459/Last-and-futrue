// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_room_past_restart(){
	instance_destroy(obj_lost_jump)
	instance_destroy(obj_lost_jump_kid)
	
	var n_box = instance_number(obj_box);//箱子归位
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
	instance_deactivate_object(obj_player_future)
	instance_deactivate_object(obj_solid_future);
	instance_activate_object(obj_solid_past)
	obj_player_manage.player_num=0
	
	
	
}