// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_computer_move(){
	var empty_cells = ds_list_create();
	
	for(var i=0; i < ds_grid_width(grid);i++;){
		for(var j=0; j < ds_grid_height(grid); j++;){
			if(grid[# i,j] == -1){
				var cell = ds_list_create();
				ds_list_add(cell, i);
				ds_list_add(cell, j);
				dsempty_list_add(empty_cells, cell);
			}
		}
	}
	
	if(!ds_list_empty(emptyCells)){
		var randomIndex = irandom(ds_list_size(emptyCells) -1);
		var cell =empty_cells[| randomIndex];
	}
	ds_list_destroy(empty_cells);
	
	
}