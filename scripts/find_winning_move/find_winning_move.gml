	/// Find a winning move for the specified player
function find_winning_move(player) {
    for (var i = 0; i < ds_grid_width(grid); i++) {
        for (var j = 0; j < ds_grid_height(grid); j++) {
            if (grid[# i, j] == -1) {
                // Simulate the move
                grid[# i, j] = player;
                if (scr_check_win() == "win") {
                    var winning_move = [i, j];
                    grid[# i, j] = -1; // Undo the move
                    return winning_move;
                }
                grid[# i, j] = -1; // Undo the move
            }
        }
    }
    return undefined; // No winning move found
}

/// scr_computer_move