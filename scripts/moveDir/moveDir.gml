var direc = argument0;

switch direc{
	
	case 0: x += tileWidth; break;
	case 1: y -= tileHeight; break;
	case 2: x -= tileWidth; break;
	case 3: y += tileHeight; break;
}

var currentx = x/tileWidth;
var currenty = y/tileHeight;
roomID = ds_grid_get(grid,currentx,currenty); 
//if roomID > 0{// if this room does exist 
	newdir = wrap(direc+2, 0,3);
	//var rooms = instance_position(x,y,Room);
	if !checkWalls(roomID,newdir){ //check walls of that tile
		moveDir(newdir);// move back
	}
//}