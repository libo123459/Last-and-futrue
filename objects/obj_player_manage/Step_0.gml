/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("L"))
{	
	if(room_get_name(room) != "Room1")
	{		
		if(obj_player.state = scr_move_state)
		{		
			scr_switch_time();
		}
	}
}

if keyboard_check_pressed(ord("1"))
{
	if(obj_player.state != scr_push_state)
	{		
		scr_room_restart();
	}	
}
/*if keyboard_check_pressed(ord("R"))
{
	scr_room_past_restart();
}