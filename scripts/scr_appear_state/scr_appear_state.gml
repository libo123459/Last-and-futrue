// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_appear_state(){
	hspd = 0
	vspd = 0;
	if(obj_player_manage.player_num = 1)
	{
		obj_player_future.sprite_index = spr_player_future_switch_re
		image_speed = .8
	}
	if(obj_player_manage.player_num = 0)
	{
		obj_player_past.sprite_index = spr_player_past_switch_re
		image_speed = .8
	}
}