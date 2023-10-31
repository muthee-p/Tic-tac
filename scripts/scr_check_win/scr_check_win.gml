function scr_check_win(){
	var player = argument[0];
	var cross = 0;
	var circle = 1;
	
	//row
	function checkRowWin(cross){
		for (var i =0; i< ds_grid_width(grid); i++;){
			if (grid [# 0, i] == player){
				if (grid[# 1, i] == player and grid[# 2, i] == player){
					start_cell_x =170;
					start_cell_y= 320+cell_width * i+240;
					highlight=obj_highlight_row;
					return true;
				}
		}
		}
	}
	
	//col
	function checkColWin(cross) {
		for (var i =0; i< ds_grid_height(grid); i++;){
			if (grid [# i, 0] == player){
				if (grid[# i, 1] == player and grid[# i, 2] == player){
					start_cell_x = cell_width * i+ 240;
					start_cell_y= 490;
					highlight= obj_highlight_col;
					return true;
				}
			}
			
		}
		return false;
	}

	//diagonal
	function checkDiagonalWin(cross){
		if (grid [# 0, 0] == player){
				if (grid[# 1, 1] == player and grid[# 2, 2] == player){
					
					start_cell_x = 230;
					start_cell_y = 569;
					highlight =obj_highlight_left;
					return true;
				}
		}
	
		if (grid [# 0, 2] == player){
				if (grid[# 1, 1] == player and grid[# 2, 0] == player){
					start_cell_x = 1044;
					start_cell_y = 550;
					highlight =obj_highlight_right;
					return true;
				}
		}
		return false;
	}
	
	
	//circles
	function checkRowCirWin(circle){
		for (var i =0; i< ds_grid_width(grid); i++;){
			if (grid [# 0, i] == player){
				if (grid[# 1, i] == player and grid[# 2, i] == player){
					start_cell_x =170;
					start_cell_y= 320+cell_width * i+240;
					highlight =obj_highlight_row;
					return true;
				}
		}
		}
	}
	
	//col
	function checkColCirWin(circle) {
		for (var i =0; i< ds_grid_height(grid); i++;){
			if (grid [# i, 0] == player){
				if (grid[# i, 1] == player and grid[# i, 2] == player){
					highlight =obj_highlight_col;
					start_cell_x = cell_width * i+ 240;
					start_cell_y= 490;
					return true;
				}
			}
			
		}
		return false;
	}
	
	//diagonal
	function checkDiagonalCirWin(circle){
		if (grid [# 0, 0] == player){
				if (grid[# 1, 1] == player and grid[# 2, 2] == player){
					start_cell_x = 299;
					start_cell_y = 616;
					highlight =obj_highlight_left;
					return true;
				}
		}
	
		if (grid [# 0, 2] == player){
				if (grid[# 1, 1] == player and grid[# 2, 0] == player){
					highlight =obj_highlight_right;
					start_cell_x = 869;
					start_cell_y = 599;
					return true;
				}
		}
		return false;
	}
	
	
	
	 
	if(checkRowWin(cross) || checkColWin(cross) || checkDiagonalWin(cross)){
		//time_source = time_source_create(time_source_game, 1, time_source_units_seconds,function(){

			player1 += 1;
			instance_create_depth(start_cell_x, start_cell_y, 0, highlight);
			game_over = true;
			instance_create_depth(0, 0, 0, obj_round_over);
			return;
		//}, []);
		//time_source_start(time_source);
	}
	else if(checkRowCirWin(circle) || checkColCirWin(circle) || checkDiagonalCirWin(circle)){
		//time_source = time_source_create(time_source_game, 1, time_source_units_seconds,function(){
			player2 =+ 1;
			instance_create_depth(start_cell_x, start_cell_y, 0, highlight);
			game_over = true;
			
			instance_create_depth(0, 0, 0, obj_round_over);
			return;
			
		//}, []);
		//time_source_start(time_source);
		
	}
	else if(!ds_grid_value_exists(grid, 0, 0, 2, 2, -1)){
		var tie =instance_create_depth(0, 0, 0, obj_round_over);
		tie.tie =true;
	}
	
	
	
		
}
	
