for (var i = 0; i<ds_grid_width(grid);i++;){
	for (var j= 0; j<ds_grid_height(grid); j++;){
		if(grid[# i, j] == -1) {
			continue;
		}
		var subImage= grid[# i,j];
		draw_sprite(spr_o, subImage, i * cell_width, j*cell_width + cell_width);
	}
}

var ww, turn;
ww= window_get_width();

switch (player){
	case	 true:turn ="cross";	break;
	case	false:turn ="circle";	break;
}



draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(-1);


draw_text(2, 2, "player one");
draw_text(2, 14, "cross");

draw_set_halign(fa_right);
draw_text(ww - 2, 2,"player two");
draw_text(ww - 2, 14, "circle");


draw_set_halign(fa_center);
draw_text(ww/2, 2, "turn: " + turn)
