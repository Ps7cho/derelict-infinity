/// @dis load the rooms you can see
var direc = wrap(dir+1, 0,3);

for (var i = 0; i < 3; i++){
	xx = lengthdir_x(tileWidth,direc*90);
	yy = lengthdir_y(tileHeight,direc*90);
	roomID = ds_grid_get(grid,x/tileWidth,y/tileHeight);
	if roomID > 0{
		if checkWalls(roomID.image_index,direc){
			makeRoom(x+xx,y+yy,direc);	
		}
	}
	direc = wrap(direc-1, 0,3); //rotate direction
}
