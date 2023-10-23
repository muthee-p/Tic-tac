// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_tac_place(){
	var xx =argument[0];
	var yy= argument[1];
	
	
	if (grid[# xx, yy] == -1 && !game_over) {
    // Check if there is no existing player_symbol object at this position
    //var player_symbol = instance_place(xx * 160 + 80, yy * 160 + 240, obj_turn);

    //// Set the subimage based on the player's turn
    //player_symbol.image_index = (player ? 1 : 0); // Assuming 0 is "X" and 1 is "O"

    grid[# xx, yy] = player;
    scr_check_win();

    if (!game_over) {
        player = !player; // Switch player's turn
        scr_computer_move(); // If it's the computer's turn
    }
}

//grid[# xx,yy] = player;

//if(!game_over) {
//	var player_switch = instance_create_depth(xx * 154 + 166, yy * 154 + 964, 0, obj_turn);
//	if(!player_switch){
//		player_switch = instance_create_depth(xx * 154 + 166, yy * 154 + 964, 0, obj_turn);
//	}
//	player= !player;
	
//	player_switch.image_index = (player ? 1 : 0);
	
	
//	}

////check for win
//scr_check_win();

}