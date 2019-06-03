/// @dis load the rooms you can see

var direc = wrap(dir+1, 0,3);

for (var i = 0; i <= 3; i++){
	xx = lengthdir_x(tileWidth,direc*90);
	yy = lengthdir_y(tileHeight,direc*90);
	var currentx = x+xx;
	var currenty = y+yy;
	roomID = ds_grid_get(grid,x/tileWidth,y/tileHeight);
	if roomID > 0 {// if this room does not exist 
		if checkWalls(roomID,direc){
			var type = ds_grid_get(grid,currentx/tileWidth,currenty/tileHeight);
			if !type {
				var type = generateRoom(currentx,currenty,direc);
			}
			makeRoom(currentx,currenty,type);
			
		}
	}
	direc = wrap(direc-1, 0,3); //rotate direction
}
