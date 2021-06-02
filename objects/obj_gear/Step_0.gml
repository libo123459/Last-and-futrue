/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player))
{
	touched = true;
	if keyboard_check_pressed(ord("E"))
	{		
		target_plat.onoff = abs(target_plat.onoff - 1);
		target_plat.state = scr_platform_move
		show_debug_message("go!")
	}
	show_debug_message("touch!")
} else {
	touched = false;
	show_debug_message("no touch!")
}