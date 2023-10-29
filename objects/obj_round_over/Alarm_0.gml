//destroy

if (instance_exists(obj_game)) {
    if(!game_over){
	with(obj_game){
	ds_grid_clear(grid, -1)
	game_over=false;
	player=!player;
}


instance_destroy();
}
} else if (instance_exists(obj_comp_game)) {
  if(!game_over){
	with(obj_comp_game){
	ds_grid_clear(grid, -1)
	game_over=false;
	player=!player;
	
}


instance_destroy();
}
}