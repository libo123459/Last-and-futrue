// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_lost_jump(){
	if(!instance_exists(obj_lost_jump))
	{
		instance_create_layer(x,y,"Instances",obj_lost_jump)		
	}
	
}