/// @description Insert description here
// You can write your code in this editor
if(other.active = true)
{
	other.active = false
	other.image_alpha = 0;
	obj_gate_finish_future.active = true;
	instance_create_layer(x,y,"Instances",obj_switch_sfx)
}
