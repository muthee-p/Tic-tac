var xx, yy;
xx = (mouse_x - 286) div cell_width;
yy = (mouse_y -  616) div cell_width;

if(game_over == false)
{
	if(grid[# xx, yy] == -1){
		scr_tac_place(xx,yy);
	}
	
	if(player == false){
		scr_computer_move();
	}
}