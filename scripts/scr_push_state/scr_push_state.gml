// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_push_state(){
	
	var box = instance_nearest(x,y,obj_box)
	var _dir = box.x-x;
	if(x != push_target)
	{		
		box.hspd = sign(_dir);
		with(box)
		{
			if(place_meeting(x+hspd,y,obj_solid) || place_meeting(x+hspd,y,obj_box))
			{
				fixed = true;
			}
		}
		if(box.fixed = true)
		{
			hspd = 0;
			box.hspd = 0;
			state = scr_move_state
		} else {
			hspd = sign(_dir)
		}
	}else{
		hspd = 0;
		box.hspd = 0;
		push_power = 0;
		state = scr_move_state
	}
	
}
