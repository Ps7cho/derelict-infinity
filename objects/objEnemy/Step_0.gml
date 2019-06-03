/// @description 
if canMove > 0{
	var direc =(irandom(3));
	rooms = instance_position(x,y,Room);
	if checkWalls(rooms.image_index,direc){ //check walls of our current tile()
		switch direc{
	
			case 0: x += tileWidth; break;
			case 1: y -= tileHeight; break;
			case 2: x -= tileWidth; break;
			case 3: y += tileHeight; break;
		}
		newdir = wrap(direc+2, 0,3);
		rooms = instance_position(x,y,Room);
		//var rooms = instance_position(x,y,Room);
		if !checkWalls(rooms.image_index,newdir){ //check walls of that tile
			switch newdir{
	
			case 0: x += tileWidth; break;
			case 1: y -= tileHeight; break;
			case 2: x -= tileWidth; break;
			case 3: y += tileHeight; break;
		}
		}else{
			canMove --;
		}
	}
}