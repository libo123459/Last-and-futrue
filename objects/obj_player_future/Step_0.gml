/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(place_meeting(x,y,obj_lost_jump))
{		
	if(jumps_ex =0)
	{		
		instance_create_layer(x,y,"Instances",obj_switch_sfx)
	}
	jumps_ex =1;
	jumps = 1
} else {
	jumps_ex = 0;
}
