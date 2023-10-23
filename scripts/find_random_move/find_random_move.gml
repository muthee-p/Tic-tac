/// Find a random available move
function find_random_move() {
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

    if (!ds_list_empty(empty_cells)) {
        var randomIndex = irandom(ds_list_size(empty_cells) - 1);
        var cell = empty_cells[| randomIndex];
        ds_list_destroy(empty_cells);
        return [cell[0], cell[1]]; // Return the coordinates as an array
    } else {
        ds_list_destroy(empty_cells);
        return [0, 0]; // Fallback in case no empty cells are found (you can adjust this as needed)
    }
}
