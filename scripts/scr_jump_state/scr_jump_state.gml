// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_jump_state(){
	if place_meeting(x,y+vspd,obj_solid)
	{
		while !place_meeting(x,y+sign(vspd),obj_solid)
		{
			y +=sign(vspd)
		}
		vspd = 0;
		state = scr_move_state;
	} else {
		vspd += _g;
	}
	y += vspd;
}
	
