dir = argument0;
rooms = instance_position(x,y,Room);
if checkWalls(rooms.image_index,dir){ //check walls of our current tile()
	moveDir(dir);// move player
	//var type = generateRoom(x,y,dir);// generate room
	//makeRoom(x,y, type);
	// generate surrounding rooms
	//lookAround();
}

checkClose(floorTile);
checkClose(Room);

with (objEnemy) {
	canMove += 1;
}
show_damagetext(x-offset,y+offset,totalArmor,c_purple,1,1);