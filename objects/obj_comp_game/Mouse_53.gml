var xx, yy;
xx = (mouse_x - 286) div cell_width;
yy = (mouse_y -  616) div cell_width;

//if(game_over == false)
//{
//	if(grid[# xx, yy] == -1){
//		audio_play_sound(snd_click, 1, false);
//		scr_comp_tac_place(xx,yy);
//	}
	
//	if(player == false && computer== true){
//		audio_play_sound(snd_click, 1, false);
//		scr_computer_move();
//	}
//}

if (game_over == false) {
   
        if (grid[# xx, yy] == -1) {
            audio_play_sound(snd_click, 1, false);
            scr_comp_tac_place(xx, yy);
            }
	
}
