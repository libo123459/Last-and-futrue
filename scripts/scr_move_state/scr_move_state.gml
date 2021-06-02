// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_state(){	
scr_get_input()
if (xaxis != 0)
{
	hspd = xaxis*3;
	if(obj_player_manage.player_num = 0)
	{		
		image_speed = 1;
		sprite_index = spr_player_past_run;
	} else {
		image_speed = .7;
		sprite_index = spr_player_future_run;
	}
	image_xscale = xaxis;
} else {
	hspd = 0
	image_speed = .3;
	if(obj_player_manage.player_num = 0)
	{
		
		sprite_index = spr_player_past;
	} else {
		sprite_index = spr_player_future;
	}
}

if place_meeting(x,y+1,obj_solid) || place_meeting(x,y+1,obj_box)
{	
	jumps = jumpsmax + jumps_ex+jumps_statue;
	if(jumps > 2)
	{
		jumps = 2;
	}
	onGround = true
	
} else {	
	vspd += _g;
	if(onGround= true)
	{
		onGround = false;
		jumps -=1
	}
}

if (jump_key && jumps > 0) //跳跃相关
{
	onGround = false;
	if(obj_player_manage.player_num = 0)
	{
		if(jumps = 1)
		{
			if(jumps_statue !=0)
			{
				jumps_statue -=1;
				scr_lost_jump();
				
			} else {		
				if(jumps_ex != 0)
				{
					jumps_ex -=1;
					scr_lost_jump();
				} 
			}		
		}		
	} else {
		if(jumps = 1)
		{
			if(jumps_statue !=0)
			{
				jumps_statue -=1;
				scr_lost_jump()
			} else {		
				if(jumps_ex != 0)
				{
					jumps_ex -=1;
				} 
			}
		}	
	}
		
	jumps -=1	
	vspd = jump_height	
}

///以下为碰撞///
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

y += vspd;
x += hspd

}