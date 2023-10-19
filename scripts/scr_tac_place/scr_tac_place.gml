// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_tac_place(){
	var xx =argument[0];
	var yy= argument[1];

grid[# xx,yy] = player;

if(!game_over) {  player= !player;}

//check for win
scr_check_win();

}