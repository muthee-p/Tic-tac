// if(game_over == true){
if(!game_over){
var player, width, height, turn;

width = 1280/2;
height = 1600/2;

if (instance_exists(obj_game)) {
    player = obj_game.player;
} else if (instance_exists(obj_comp_game)) {
    player = obj_comp_game.player;
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(0.5);
draw_clear_alpha(c_black, 0.5);
draw_set_font(fnt_custom);


switch(tie) {
	case true: draw_text(width, height, "It's a TIE!"); break;
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
		
		
		draw_text(width, height, turn + " wins!");
		break;

}
}