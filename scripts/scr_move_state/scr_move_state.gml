// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_state(){	
scr_get_input()
if (xaxis != 0)
{	
	hspd = xaxis*3;
	if(onGround = false)
	{
		if(obj_player_manage.player_num = 0)
		{	
			if(vspd < 0)
			{				
				sprite_index = spr_player_past_jump;
			} else {
				sprite_index = spr_player_past_fall;
			}
		} else {
			if(vspd < 0)
			{				
				sprite_index = spr_player_future_jump;
			} else {
				sprite_index = spr_player_future_fall;
			}
		}
		
	} else {		
		if(obj_player_manage.player_num = 0)
		{		
			image_speed = 1;
			sprite_index = spr_player_past_run;
		} else {
			image_speed = .7;
			sprite_index = spr_player_future_run;
		}
		if(count > 15)
		{				
			count = 0
		} else {
			count ++
		}
		show_debug_message(count)
		if(floor(count) = 8)
		{
			audio_play_sound(walk,3,false)		
		}
	}
	image_xscale = xaxis;
} else {
	count = 0
	hspd = 0
	if(onGround = false)
	{
		if(obj_player_manage.player_num = 0)
		{	
			if(vspd < 0)
			{				
				sprite_index = spr_player_past_jump;
			} else {
				sprite_index = spr_player_past_fall;
			}
		} else {
			if(vspd < 0)
			{				
				sprite_index = spr_player_future_jump;
			} else {
				sprite_index = spr_player_future_fall;
			}
		}
	} else {
		image_speed = .3;
		if(obj_player_manage.player_num = 0)
		{		
			sprite_index = spr_player_past;
		} else {
			sprite_index = spr_player_future;
		}
		
	}	
	image_xscale = image_xscale;
}

if place_meeting(x,y+1,obj_solid) || place_meeting(x,y+1,obj_box)
{	
	jumps = jumpsmax + jumps_ex+jumps_statue;
	if(jumps > 2)
	{
		jumps = 2;
	}
	if(onGround = false)
	{
		audio_play_sound(fall,7,false)
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
					instance_create_layer(x,y,"Instances",obj_player_wings)
					audio_play_sound(second_jump,5,false)
				} 
			}		
		}		
	} else {
		if(jumps = 1)
		{
			if(jumps_statue !=0)
			{
				jumps_statue -=1;
			} else {		
				if(jumps_ex != 0)
				{
					jumps_ex -= 1
					instance_create_layer(x,y,"Instances",obj_player_wings)
					audio_play_sound(second_jump,5,false)
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
	var _hspd = hspd;
	hspd = 0;	
	if(push_power < 25)
	{	
		push_power++		
	}else{
		push_target = x + sign(_hspd)*32;		
		state = scr_push_state	
	}
} else {
	push_power = 0;
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

}