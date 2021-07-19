// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_jump_state()
{	
	scr_get_input()
	onGround = false;
	if(obj_player_manage.player_num = 0)
	{
		sprite_index = spr_player_past_jump;
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
		sprite_index = spr_player_future_jump;
		image_speed = .3;
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
	
y += vspd;
x += hspd
}