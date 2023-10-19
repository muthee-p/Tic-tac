var xx, yy;
xx = mouse_x div cell_width;
yy = (mouse_y -  cell_width) div cell_width;

if(game_over == false)
{
	if(grid[# xx, yy] == -1){
		scr_tac_place(xx,yy);
	}
}