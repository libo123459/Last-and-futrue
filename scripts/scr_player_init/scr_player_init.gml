// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_init(){
	
	
	/*obj_player_future.x = 70
	obj_player_future.y = room_height - 180
	obj_player_past.x = 50
	obj_player_past.y = room_height - 180
	if(obj_player_manage.checkpoint_num = 7)
	{
		obj_player_future.x = 352
		obj_player_future.y = 396
		obj_player_past.x = 352
		obj_player_past.y = 396
	}*/
	instance_deactivate_object(obj_player_future)
	instance_deactivate_object(obj_solid_future);
	instance_activate_object(obj_solid_past)
	obj_player_manage.player_num=0
	if(instance_exists(obj_switch_past)||instance_exists(obj_switch_future))
	{
		obj_gate_finish_past.sprite_index = spr_gate_deact;
		obj_gate_finish_past.active = false;
	}
	

}