/// @description Insert description here
// You can write your code in this editor
	
vspd += _g

scr_box_collision(obj_solid)
scr_box_collision(obj_box)
scr_box_collision(obj_trap)
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
if(room_get_name(room) = "Room12" || room_get_name(room) = "Room13")
{
	
	if(topast = true)
	{	
		var count = abs(y - ypos_switch)
		_vs = 5
		if(count > 1)
		{	
			y -=_vs
			count -=_vs
		} else {
			if(count = 1)
			{
				y -= 1
				count = 0;
			} else {				
				topast = false;
			}
		}
	}

}
y += vspd;
x += hspd
