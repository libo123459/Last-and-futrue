// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_lost_jump(){
	if(obj_player_manage.player_num = 0)
	{		
		instance_create_layer(x,y,"Instances",obj_lost_jump)
		
	} else {
		if(!instance_exists(obj_lost_jump_kid))
		{
			instance_create_layer(x,y,"Instances",obj_lost_jump_kid)		
		}
	}
	
}