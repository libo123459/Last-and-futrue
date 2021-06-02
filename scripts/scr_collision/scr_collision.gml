// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision(){

if place_meeting(x + hspd,y,obj_solid)
{	
	while !place_meeting(x+sign(hspd),y,obj_solid)
	{
		x +=sign(hspd)			
	}
	hspd = 0;		
}
if place_meeting(x,y + vspd,obj_solid)
{
	while !place_meeting(x,y+sign(vspd),obj_solid)
	{
		y +=sign(vspd)
	}
	vspd = 0;
}


if place_meeting(x+hspd,y,obj_box) && obj_player_manage.player_num = 0
{	
	var box = instance_place(x+sign(hspd),y,obj_box)
	with(box)
	{	
		scr_box_move(sign(obj_player_past.hspd),0)
	}
	hspd = sign(hspd)
}
if place_meeting(x,y+vspd,obj_box) && obj_player_manage.player_num = 0
{
	if(!place_meeting(x,y,obj_box))
	{		
		while !place_meeting(x,y+sign(vspd),obj_box)
		{
			y +=sign(vspd)
		}
		vspd = 0;
	}
}

if place_meeting(x+hspd,y,obj_box) && obj_player_manage.player_num = 1
{	
	if(!place_meeting(x,y,obj_box))
	{		
		while !place_meeting(x+sign(hspd),y,obj_box)
		{
			x +=sign(hspd)
		}
		hspd = 0;
	}
}


if place_meeting(x,y+vspd,obj_box) && obj_player_manage.player_num = 1
{
	if(!place_meeting(x,y,obj_box))
	{		
		while !place_meeting(x,y+sign(vspd),obj_box)
		{
			y +=sign(vspd)
		}
		vspd = 0;
	}
}
if place_meeting(x+hspd,y,obj_box)
{	
	if(!place_meeting(x,y,obj_box))
	{		
		while !place_meeting(x+sign(hspd),y,obj_box)
		{
			x +=sign(hspd)
		}
		hspd = 0;
	}
}
if place_meeting(x,y+vspd,obj_box)
{
	if(!place_meeting(x,y,obj_box))
	{		
		while !place_meeting(x,y+sign(vspd),obj_box)
		{
			y +=sign(vspd)
		}
		vspd = 0;
	}
}



}