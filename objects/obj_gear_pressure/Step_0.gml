/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player) || place_meeting(x,y,obj_player_past_shadow))
{
	on_off = true;
	if(target_gate = noone)
	{		
		var n_gear_pressure = instance_number(obj_gear_gate)
		for(var i = 0; i<n_gear_pressure; i++)
		{
			var obj_p = instance_find(obj_gear_gate,i)
			if(obj_p.num = num)
			{
				target_gate = obj_p;
			}
		}
	}
	target_gate.on_off = true;
	show_debug_message("catch gate")
} else {
	if(target_gate != noone)
	{
		target_gate.on_off = false;
	}
	on_off = false;
}