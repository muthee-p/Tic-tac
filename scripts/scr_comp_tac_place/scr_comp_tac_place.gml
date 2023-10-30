 
function scr_comp_tac_place(){
		var xx =argument[0];
	var yy= argument[1];
	
    if (grid[# xx, yy] == -1 && !game_over) {
        grid[# xx, yy] = player ? 1 : 0;
         
       if(scr_check_win()){
		   game_over= true;
		   return;
		   }
       
		
        if (!game_over) {
		
			    player = !player;
				
            scr_computer_move();
			
        }
		
    }

}