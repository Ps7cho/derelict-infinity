dir = argument0;
rooms = instance_position(x,y,Room);
if checkWalls(rooms.image_index,dir){ //check walls of our current tile()
	moveDir(dir);// move player
	makeRoom(x,y,dir);// generate room
		
	// generate surrounding rooms
	lookAround();
}