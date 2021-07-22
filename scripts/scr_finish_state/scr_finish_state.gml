// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_finish_state(){
	vspd = 0
	hspd = 0;
	if(obj_scene_switch.image_alpha<1)
	{		
		obj_scene_switch.image_alpha += .02
	}
}