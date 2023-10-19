var xx, yy;
xx=mouse_x div 160;
yy = (mouse_y -  160) div 160;
if(grid[# xx, yy] == -1){
	scr_tac_place(xx,yy);
}