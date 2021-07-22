/// @description Insert description here
// You can write your code in this editor
image_xscale = obj_player.image_xscale;
x = obj_player.x
if(instance_exists(obj_player_future))
{	
	y = obj_player_future.y -5
}
if(instance_exists(obj_player_past))
{	
	
	y = obj_player_past.y -12
}
if(obj_player.jumps_ex != 0)
{
	image_alpha = 1
} else {
	image_alpha = 0
}
depth = obj_player.depth + 10