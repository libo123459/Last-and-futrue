// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_platform_move(){
if(onoff = 1)
{		
	if(abs(toX - x)!=0)
	{		
		hspd = sign(toX - x)*1
	} else {
		hspd = 0;
		state = scr_platform_stop
	}
	x += hspd
} else {
	if(abs(xstart - x)!=0)
	{
		hspd = sign(xstart - x)*1
	} else {
		hspd = 0;			
		state = scr_platform_stop
	}
	x += hspd
}
	/*if place_meeting(x + hspd,y,obj_solid)
	{	
		while !place_meeting(x+sign(hspd),y,obj_solid)
		{
			x +=sign(hspd)			
		}
		hspd = 0;
		state = scr_platform_stop
	} else {
		hspd = dir*0.5
	}	
	x += hspd*/
}