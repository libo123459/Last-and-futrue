// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_state(){	
scr_get_input()
if (xaxis != 0)
{
	hspd += xaxis*acceleration;
	hspd = clamp(hspd,-max_hspd,max_hspd)
} else {
	hspd = 0
}
vspd += _g;

if place_meeting(x,y+1,obj_solid)
{	
	onGround = true;
	if obj_player_manage.player_num = 0
	{
		jumps = jumpsmax;
	} else {
		jumps = 1;
	}	
} 

if (jump_key && jumps > 0)
{		
	onGround = false;
	if(jumps = 1 && obj_player_manage.player_num = 0)
	{
		scr_lost_jump();
	}
	jumps -= 1;
	vspd = -10
}

if place_meeting(x + hspd,y,obj_solid)
{
	while !place_meeting(x+sign(hspd),y,obj_solid)
	{
		x +=sign(hspd)
	}
	hspd = 0;
}
if place_meeting(x,y+vspd,obj_solid)
{
	if(!place_meeting(x,y,obj_solid))
	{		
		while !place_meeting(x,y+sign(vspd),obj_solid)
		{
			y +=sign(vspd)
		}
		vspd = 0;
		onGround = true;
	}
}

if place_meeting(x,y+1,obj_platform)
{	
	onGround = true;
	if obj_player_manage.player_num = 0
	{
		jumps = jumpsmax;
	} else {
		jumps = 1;
	}	
}

if place_meeting(x,y+vspd,obj_platform)
{
	if(!place_meeting(x,y,obj_platform) && onGround = true)
	{		
		while !place_meeting(x,y+sign(vspd),obj_platform)
		{
			y +=sign(vspd)
		}
		vspd = 0;
	}
}
y += vspd;
x += hspd

}