if(!game_over){

var player, width, height, turn;
player = obj_game.player;
width = window_get_width() /2;
height = window_get_height() /2;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1);
draw_clear_alpha(c_black, 1);
draw_set_font(fnt_custom);


switch(tie) {
	case true: draw_text(width, height, "TIE"); break;
	case false: 
		switch(player){
			case true: turn = "cross"; break;
			case false: turn = "circle"; break;
		}
		
		draw_text(width, height, turn + " wins");
		break;

}


}