// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_box_move(argument0){
	
	var hspd = argument0;
	if place_meeting(x + hspd,y,obj_solid)
	{
		while !place_meeting(x+sign(hspd),y,obj_solid)
		{
			hspd =sign(hspd)
		}
		hspd = 0;
		fixed = true;
	}else{
		fixed = false;
	}
	
	if place_meeting(x + hspd,y,obj_box)
	{
		while !place_meeting(x+sign(hspd),y,obj_box)
		{
			x +=sign(hspd)
		}
		hspd = 0;
		fixed = true;
	}else{
		fixed = false;
	}
	x+=hspd;
}