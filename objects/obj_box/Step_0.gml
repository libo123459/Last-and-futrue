/// @description Insert description here
// You can write your code in this editor
vspd += _g;	
scr_box_collision(obj_solid)
scr_box_collision(obj_box)
if(instance_place(x,y,obj_solid_future))
{
	var inst = instance_place(x,y,obj_solid_future)
	var count = obj_solid_future.image_yscale * obj_solid_future.sprite_height
	var _vs = 5
	if(count > 0)
	{	
		y -=_vs
		count -=_vs
	} 
}

y += vspd;
x += hspd
