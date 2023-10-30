 
function scr_tac_place(){
	var xx =argument[0];
	var yy= argument[1];
	
	
    grid[# xx, yy] = player;
	
	 if(scr_check_win() == !game_over){
	 
	game_over= true;
	return;
 }
    if (!game_over) {player = !player; }

}