function scr_check_win(){
	var player = argument[0];
	var cross = 0;
	var circle = 1;
	
	//row
	function checkRowWin(cross){
		for (var i =0; i< ds_grid_width(grid); i++;){
			if (grid [# 0, i] == player){
				if (grid[# 1, i] == player and grid[# 2, i] == player){
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
					return true;
				}
		}
	
		if (grid [# 0, 2] == player){
				if (grid[# 1, 1] == player and grid[# 2, 0] == player){
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
					return true;
				}
		}
	
		if (grid [# 0, 2] == player){
				if (grid[# 1, 1] == player and grid[# 2, 0] == player){
					return true;
				}
		}
		return false;
	}
	
	//var winner = 0;
	
	 
	if(checkRowWin(cross) || checkColWin(cross) || checkDiagonalWin(cross)){
		player1 += 1;
		game_over = true;
		instance_create_depth(0, 0, 0, obj_round_over);
		
		return;
	}
	else if(checkRowCirWin(circle) || checkColCirWin(circle) || checkDiagonalCirWin(circle)){
		player2 += 1;
		game_over = true;
		instance_create_depth(0, 0, 0, obj_round_over);
		
		return;
	}
	else if(!ds_grid_value_exists(grid, 0, 0, 2, 2, -1)){
		var tie =instance_create_depth(0, 0, 0, obj_round_over);
		tie.tie =true;
	}
	
	
	
		
}
	
