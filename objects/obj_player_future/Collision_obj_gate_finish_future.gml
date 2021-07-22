/// @description Insert description here
// You can write your code in this editor
if(other.active = true)
{	
	other.active = false
	other.image_alpha = 0;
	state = scr_finish_state
	obj_player_manage.alarm[0] = room_speed*2;
	instance_create_layer(x,y,"Instances",obj_switch_sfx)
}