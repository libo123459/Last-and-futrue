/// @description Insert description here
// You can write your code in this editor\

	while !place_meeting(x+sign(other.hspd),y,other)
	{
		x +=sign(other.hspd)
	}
	while !place_meeting(x,y+sign(other.vspd),other)
	{
		y +=sign(other.vspd)
	}
		
	
/*
scr_get_input()
if (xaxis != 0)
{
	hspd = xaxis*2;
	
} else {
	hspd = 0
}

x+=hspd
/*
state = scr_push_box