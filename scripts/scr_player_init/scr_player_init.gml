// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_init(){		
	obj_player.state = scr_move_state
	obj_player.dead = false
	instance_deactivate_object(obj_player_past)
	obj_gate_finish_past.image_alpha = 0
	obj_player_manage.player_num = 1
}