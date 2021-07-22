// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_savegame(){
	if(file_exists("save.sav"))
	{
		global.stage += 1
		ini_open("save.save")
		ini_write_real("stage","num",global.stage)
		ini_close();
	}
}