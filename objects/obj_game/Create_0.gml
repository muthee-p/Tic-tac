game_mode ="";

grid = ds_grid_create(3,3);
ds_grid_clear(grid, -1);
	cell_width = 260;

	player = false;

	game_over = false;

if(game_mode == "two_players"){
	
	grid = ds_grid_create(3,3);
	ds_grid_clear(grid, -1);
	cell_width = 260;

	player = false;

	game_over = false;
} else if (game_mode == "aganist_computer"){
	grid = ds_grid_create(3,3);
	ds_grid_clear(grid, -1);
	cell_width = 260;
	var player_turn = true;
	player = false;

	game_over = false;
}