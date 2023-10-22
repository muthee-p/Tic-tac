for (var i = 0; i< ds_grid_width(grid);i++;){
	for (var j= 0; j< ds_grid_height(grid); j++;){
		if(grid[# i, j] == -1) {
			continue;
		}
		var subImage= grid[# i,j];
		draw_sprite(spr_o, subImage, i * cell_width + 286, j * cell_width + 616);
	}
}

var ww, turn;
var textArea= 200;
ww= window_get_width();

switch (player){
	case	 true:turn ="cross";	break;
	case	false:turn ="circle";	break;
}

draw_set_halign(fa_center);
draw_set_color(c_black);
draw_set_alpha(1);

draw_rectangle(0, 0, ww, 70, false);


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(-1);


draw_text(6, 6, "player one");
draw_text(20, 50, "cross");

draw_set_halign(fa_right);
draw_text(ww - 2, 2,"player two");
draw_text(ww - 2, 14, "circle");


draw_set_halign(fa_center);
draw_text(ww/2, 2, "turn: " + turn)

