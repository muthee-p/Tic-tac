function scr_computer_move() {
	time_source = time_source_create(time_source_game, 1, time_source_units_seconds,function(){

    // Check if it is the computer's turn
    if (player == false) {

        // Create a list of empty cells
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

        // If there are any empty cells, make a random move
        if (!ds_list_empty(empty_cells)) {
			
            var randomIndex = irandom(ds_list_size(empty_cells) - 1);
           var cell = empty_cells[| randomIndex];
			audio_play_sound(snd_click, 1, false);
            scr_comp_tac_place(cell[| 0], cell[| 1]);
        }

        // Destroy the empty cells list
        ds_list_destroy(empty_cells);	
    }
		}, [], 5);
				time_source_start(time_source);
}