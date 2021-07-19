// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_box_collision(argument0){	
	if place_meeting(x + hspd,y,argument0)
	{
		while !place_meeting(x+sign(hspd),y,argument0)
		{
			x +=sign(hspd)
		}
		hspd = 0;		
	}
	if place_meeting(x,y+vspd,argument0)
	{
		while !place_meeting(x,y+sign(vspd),argument0)
		{
			y +=sign(vspd)
		}
		vspd = 0;		
	}
}