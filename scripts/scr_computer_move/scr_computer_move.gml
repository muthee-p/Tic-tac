/// scr_computer_move
function scr_computer_move(){
	
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

/// scr_computer_move
//var xx, yy;

///// scr_computer_move
//var xx, yy;

//// Rule 1: If the computer can win in the next move, do it.
//for (var i = 0; i < ds_grid_width(grid); i++) {
//    for (var j = 0; j < ds_grid_height(grid); j++) {
//        if (grid[# i, j] == -1) {
//            // Simulate the move
//            grid[# i, j] = 0; // Computer's move
//            if (scr_check_win() == "win") {
//                xx = i;
//                yy = j;
//                grid[# i, j] = -1; // Undo the move
//                scr_tac_place(xx, yy);
//                return;
//            }
//            grid[# i, j] = -1; // Undo the move
//        }
//    }
//}

//// Rule 2: If the player can win in the next move, block them.
//for (var i = 0; i < ds_grid_width(grid); i++) {
//    for (var j = 0; j < ds_grid_height(grid); j++) {
//        if (grid[# i, j] == -1) {
//            // Simulate the move
//            grid[# i, j] = 1; // Player's move
//            if (scr_check_win() == "win") {
//                xx = i;
//                yy = j;
//                grid[# i, j] = -1; // Undo the move
//                scr_tac_place(xx, yy);
//                return;
//            }
//            grid[# i, j] = -1; // Undo the move
//        }
//    }
//}

//// Rule 3: If the center is empty, take it.
//if (grid[# 1, 1] == -1) {
//    xx = 1;
//    yy = 1;
//} else {
//    // Rule 4: Choose a random available move.
//    do {
//        xx = irandom(2);
//        yy = irandom(2);
//    } until (grid[# xx, yy] != -1);
//}

//scr_tac_place(xx, yy);

 
	if(!ds_list_empty(empty_cells)){
		var randomIndex = irandom(ds_list_size(empty_cells) -1);
		var cell =empty_cells[| randomIndex];
		 scr_tac_place(cell[| 0], cell[| 1]);
	}
	
ds_list_destroy(empty_cells);
}