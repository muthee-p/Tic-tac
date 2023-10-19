/// @description Insert description here
// You can write your code in this editor
game_mode ="";

grid = ds_grid_create(3,3);
ds_grid_clear(grid, -1);
	cell_width = 160;

	player = false;

	game_over = false;

if(game_mode == "two_players"){
	
	grid = ds_grid_create(3,3);
	ds_grid_clear(grid, -1);
	cell_width = 160;

	player = false;

	game_over = false;
} else if (game_mode == "aganist_computer"){
	grid = ds_grid_create(3,3);
	ds_grid_clear(grid, -1);
	cell_width = 160;

	player = false;

	game_over = false;
}