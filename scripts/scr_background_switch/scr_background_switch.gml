// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_background_switch(){
	var i_speed = .8
	if(obj_player_manage.player_num = 1)
	{		
		obj_background_1.tofurture = true;		
		obj_background_1.sprite_index = spr_bg_tree1_re
		obj_background_1.image_index = 0;		
		obj_background_1.image_speed = i_speed
		obj_background_2.tofurture = true;		
		obj_background_2.sprite_index = spr_bg_tree2_re
		obj_background_2.image_index = 0;		
		obj_background_2.image_speed = i_speed		
	} else {
		obj_background_1.topast = true;
		obj_background_1.sprite_index = spr_bg_tree1
		obj_background_1.image_index = 0;		
		obj_background_1.image_speed = i_speed		
		obj_background_2.topast = true;		
		obj_background_2.sprite_index = spr_bg_tree2
		obj_background_2.image_index = 0;		
		obj_background_2.image_speed = i_speed
	}
}