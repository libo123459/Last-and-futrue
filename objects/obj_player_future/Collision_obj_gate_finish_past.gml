/// @description Insert description here
// You can write your code in this editor
if(obj_gate_finish_past.active = true)
{	
	instance_destroy(other)
	room_goto_next();
}