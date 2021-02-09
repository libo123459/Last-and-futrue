// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_box_move(argument0,argument1){
	var hspd = argument0;
	var vspd = argument1;
	if place_meeting(x + hspd,y,obj_solid)
	{
		while !place_meeting(x+sign(hspd),y,obj_solid)
		{
			hspd =sign(hspd)
		}
		hspd = 0;
	}
	x+=hspd;
	if place_meeting(x,y+vspd,obj_solid)
	{
		while !place_meeting(x,y+sign(vspd),obj_solid)
		{
			vspd =sign(vspd)
		}
		vspd = 0;		
	}
	y+=vspd;
}