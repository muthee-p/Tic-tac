//destroy
with(obj_game){
	ds_grid_clear(grid, -1)
	game_over=false;
	player=!player;
}


instance_destroy();

