// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_minimax(){
var grid = argument[0];
var c_depth = argument[1];

if (scr_check_win() == "win") {
    return - 10; // Player wins, so computer's score is worse
} else if (scr_check_win() == "tie") {
    return 0; // It's a tie
} else if (scr_check_win() == "no_win") {
    var best_score = -infinity;
    var best_move = -1;
    
    for (var i = 0; i < ds_grid_width(grid); i++) {
        for (var j = 0; j < ds_grid_height(grid); j++) {
            if (grid[# i, j] == -1) {
                grid[# i, j] = 1; // Simulate the computer's move
                var c_score = -minimax(grid, c_depth + 1);
                grid[# i, j] = -1; // Undo the move
                
                if (c_score > best_score) {
                    best_score = c_score;
                    best_move = i *3 + j;
                }
            }
        }
    }
    

        return best_score;

}
//	var isMaximizing = false;
//	var empty_cells = ds_list_create();
//	var computer_player = 1;
//	var human_player =0;
	
//	if (scr_check_win() == "win" && isMaximizing){
//		return -1;
//	}else if(scr_check_win() == "win" && !isMaximizing){
//		return 1;
//	}else if (empty_cells == 0){
//		return 0;
//	}
	
//	if (isMaximizing){
//		var best_score = -infinity;
		
//		for (var i = 0; i < ds_list_size(empty_cells); i++) {
//        var cell = empty_cells[| i];
//        var xc = cell[| 0];
//        var yu = cell[| 1];
        
//        grid[# xc, yu] = computer_player;
//        var c_score = -minimax(grid, depth + 1, false);
//        grid[# xc, yu] = -1;
        
//        best_score = max(c_score, best_score);
//    } 
//    return best_score;
	
//	}
//	else {
//    var best_score = infinity;
    
//    for (var i = 0; i < ds_list_size(empty_cells); i++) {
//        var cell = empty_cells[| i];
//        var xc = cell[| 0];
//        var yu = cell[| 1];
        
//        grid[# xc, yu] = human_player;
//        var c_score = -minimax(grid, depth + 1, true); // Pass true for maximizing player
//        grid[# xc, yu] = -1;
        
//        best_score = min(c_score, best_score);
//    }
//	return best_score;
//}
}