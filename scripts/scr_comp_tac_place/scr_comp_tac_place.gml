 
function scr_comp_tac_place(){
		var xx =argument[0];
	var yy= argument[1];
	
    if (grid[# xx, yy] == -1 && !game_over) {
        grid[# xx, yy] = player ? 1 : 0; // Player's move
        player = !player; // Switch turns
        scr_check_win();
        
        if (player == false && !game_over) {
            scr_computer_move(); // Call the computer move script
        }
    }

}