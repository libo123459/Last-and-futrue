// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_room_restart(){
	instance_destroy(obj_lost_jump)

	
	var n_box = instance_number(obj_box);
	for(var i = 0;i<n_box;i++)
	{
		var obj_b = instance_find(obj_box,i)
		obj_b.x = obj_b.xstart;
		obj_b.y = obj_b.ystart;
		obj_b.fixed = false;
	}	
	
	instance_activate_all();
	obj_player_past.x = obj_player_past.xstart
	obj_player_past.y = obj_player_past.ystart
	obj_player_past.jumps_ex = 1;
	
	obj_player_future.x = obj_player_future.xstart
	obj_player_future.y = obj_player_future.ystart
	obj_player_future.jumps_ex = 0;
	
	var n_platform = instance_number(obj_solid_platform);
	for(var i = 0;i<n_platform;i++)
	{
		var obj_p = instance_find(obj_solid_platform,i)
		obj_p.x = obj_p.xstart;
		obj_p.y = obj_p.ystart;
		obj_p.touched = false;
	}
	scr_player_init();
}