// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_input(){
	right_key = keyboard_check(ord("D"));
	left_key = keyboard_check(ord("A"));
	up_key = keyboard_check(ord("W"));
	down_key = keyboard_check(ord("S"));
	jump_key = keyboard_check_pressed(ord("J"));
	switch_key = keyboard_check_pressed(ord("K"));

	xaxis = (right_key - left_key);
	yaxis = (down_key - up_key);

}