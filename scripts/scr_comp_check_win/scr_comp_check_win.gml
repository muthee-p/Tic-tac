function scr_comp_check_win(){
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
	
	
	
	
	if(checkRowWin(cross) || checkColWin(cross) || checkDiagonalWin(cross)){
		instance_create_depth(0, 0, 0, obj_comp_round_over);
		game_over = true;
	}
	else if(checkColCirWin(circle) || checkColCirWin(circle) || checkDiagonalCirWin(circle)){
		instance_create_depth(0, 0, 0, obj_comp_round_over);
		game_over = true;
	}
	else if(!ds_grid_value_exists(grid, 0, 0, 2, 2, -1)){
		var tie =instance_create_depth(0, 0, 0, obj_comp_round_over);
		tie.tie =true;
	}
		
}
	
