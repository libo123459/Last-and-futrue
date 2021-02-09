// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_switch_player(){
	
	if(obj_player_manage.player_num = 0)
	{
		obj_player_manage.player_num = 1;
		instance_deactivate_object(obj_solid_past)
		instance_activate_object(obj_solid_future)
		instance_deactivate_object(obj_player_past)
		instance_activate_object(obj_player_future)
	} else {
		obj_player_manage.player_num = 0;
		instance_deactivate_object(obj_solid_future)
		instance_activate_object(obj_solid_past)
		instance_deactivate_object(obj_player_future)
		instance_activate_object(obj_player_past)
	}
}