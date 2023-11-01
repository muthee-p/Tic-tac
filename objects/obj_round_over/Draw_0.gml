
if(!game_over){
var player, width, height, turn;

width = 1280;
height = 350;

if (instance_exists(obj_game)) {
    player = obj_game.player;
} else if (instance_exists(obj_comp_game)) {
    player = obj_comp_game.player;
}

   draw_set_color(c_black);
   draw_rectangle(0, height, width, height / 4, false);

    draw_set_color(c_white);

    draw_set_halign(fa_center);

    draw_set_font(fnt_custom);



switch(tie) {
	case true: draw_text(width/2, height-50, "It's a TIE!"); break;
	case false:
		if (instance_exists(obj_game)) {
			switch(player){
			case true: turn = "Player One"; break;
			case false: turn = "Player Two"; break;
		}
		} else if (instance_exists(obj_comp_game)) {
			switch(player){
			case true: turn = "Player"; break;
			case false: turn = "Computer"; break;
		}
		}
		
		
		draw_text(width / 2, height / 2 + 20, turn + " wins!");

		break;

}
}