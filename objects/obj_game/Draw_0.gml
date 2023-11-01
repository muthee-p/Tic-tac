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
ww= 1280;

switch (player){
	case	 true:turn ="Player 1";	break;
	case	false:turn ="Player 2";	break;
}

draw_set_halign(fa_center);
draw_set_color(c_black);
draw_set_alpha(1);

draw_rectangle(0, 0, ww, textArea, false);



draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(-1);
draw_set_font(fnt_helv);


draw_text(64, 45, "Player one");
draw_text(64, 79, "Cross");
draw_text(64, 109, "Score: " + string(player1));

draw_set_halign(fa_right);
draw_text(ww - 64, 45,"Player two");
draw_text(ww - 64, 79, "Circle");
draw_text(ww - 64, 109, "Score: " + string(player2));


draw_set_halign(fa_center);
draw_text(ww/2, 45, "Turn: " + turn);
draw_text(ww/2, 109, "Score: " + string(tie_score));

var x_fixed = 166;
var y_fixed = 972;
var x_fixed2 =1086;
var y_fixed2 = 972;

var symbol_x = sprite_get_width(spr_turn) / 2;
var symbol_y = sprite_get_height(spr_turn) / 2;

draw_sprite(spr_turn, 1, x_fixed - symbol_x, y_fixed - symbol_y);
draw_sprite(spr_turn, 0, x_fixed2 - symbol_x, y_fixed2 - symbol_y);

for (var i = 0; i < ds_grid_width(grid); i++) {
    for (var j = 0; j < ds_grid_height(grid); j++) {
        if (grid[# i, j] != -1) {
            // Determine which symbol to draw based on the current player
            var symbol_subimage = player ? 1 : 0;
			var second_symbol_subimage = player ? 0 : 1;

            // Draw the symbol for the current player at the fixed position
            draw_sprite(spr_turn, symbol_subimage, x_fixed - symbol_x, y_fixed - symbol_y);

			draw_sprite(spr_turn, second_symbol_subimage, x_fixed2 - symbol_x, y_fixed2 - symbol_y);
        }
    }
}
