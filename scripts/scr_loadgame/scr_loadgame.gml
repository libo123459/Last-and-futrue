// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_loadgame(){
	
	if(file_exists("save.save"))
	{	
		ini_open("save.save")
		global.stage = ini_read_real("stage","num",0)
		ini_close();
	}
}