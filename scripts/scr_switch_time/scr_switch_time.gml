// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_switch_time(){
	if(player_num = 0)
	{
		player_num = 1;
	} else {
		player_num = 0;
	}
	scr_switch_player(player_num)
}