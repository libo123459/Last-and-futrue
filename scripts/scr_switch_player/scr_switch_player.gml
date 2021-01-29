// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_switch_player(argument0){
	if(argument0 = 0)
	{
		instance_deactivate_object(obj_player_future)
		instance_activate_object(obj_player_past)
	} else {
		instance_deactivate_object(obj_player_past)
		instance_activate_object(obj_player_future)
	}
}