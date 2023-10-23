
function scr_computer_move(){
	

///// scr_computer_move

//// Define the computer's preferred moves
//var preferred_moves = [
//    [1, 1], // Center (highest priority)
//    [0, 0], [0, 2], [2, 0], [2, 2], // Corners
//    [0, 1], [1, 0], [1, 2], [2, 1] // Sides
//];

//// Check for winning moves
//for (var i=0;i< array_length(preferred_moves);i++) {
//	var move= preferred_moves[i];
//    if (grid[# move[0], move[1]] == -1) {
//        grid[# move[0], move[1]] = 0; // Try to make a winning move
//        if (scr_check_win() == "win") {
//            scr_tac_place(move[0], move[1]);
//            return; // Winning move found
//        }
//        grid[# move[0], move[1]] = -1; // Undo the move
//    }
//}

//// Check for blocking moves
//for (var i=0;i< array_length(preferred_moves);i++) {
//	var move= preferred_moves[i];
//    if (grid[# move[0], move[1]] == -1) {
//        grid[# move[0], move[1]] = 1; // Try to block the player's winning move
//        if (scr_check_win() == "win") {
//            scr_tac_place(move[0], move[1]);
//            return; // Blocking move found
//        }
//        grid[# move[0], move[1]] = -1; // Undo the move
//    }
//}

//// If no winning or blocking moves, make a random move
//var random_move = preferred_moves[ irandom(array_length(preferred_moves) - 1)];

//scr_tac_place(random_move[0], random_move[1]);



var empty_cells = ds_list_create();

for (var i = 0; i < ds_grid_width(grid); i++) {
    for (var j = 0; j < ds_grid_height(grid); j++) {
        if (grid[# i, j] == -1) {
            var cell = ds_list_create();
            ds_list_add(cell, i);
            ds_list_add(cell, j);
            ds_list_add(empty_cells, cell);
        }
    }
}
 
	if(!ds_list_empty(empty_cells)){
		var randomIndex = irandom(ds_list_size(empty_cells) -1);
		var cell =empty_cells[| randomIndex];
		 scr_tac_place(cell[| 0], cell[| 1]);
		 
	}
	
ds_list_destroy(empty_cells);
	
}