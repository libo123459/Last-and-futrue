/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter))
{
	if(global.stage > 0)
	{		
		room_goto(asset_get_index("Room"+string(global.stage)));
	} else {		
		room_goto_next()
	}
}