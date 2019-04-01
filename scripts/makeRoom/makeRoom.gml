




currentx = argument0;
currenty = argument1;
dir = argument2;

//check if a tile exists()
var gridx = currentx/tileWidth;
var gridy = currenty/tileHeight;
roomID = ds_grid_get(grid,gridx,gridy); 
if roomID = 0{ // if this room does not exist 
	with(World){ // make it
		instance_create_layer(other.currentx, other.currenty, "floor", floorTile);
		rooms = instance_create_layer(other.currentx,other.currenty,"walls", Room);
		type = irandom_range(1,3)
		if openings < 10 {
			type = 3;	
		}
		if type = 0{
			type += other.dir;
		}else if type = 1{
			type = wrap((type*4)+other.dir+irandom(1),4,7);
		}else if type = 2{
			type = wrap((type*4)+other.dir+irandom(2),8,11);	
		}else{ type = type*4;}
		
		rooms.image_index = type;
		openings += floor(rooms.image_index/4)-2;
		ds_grid_add(grid,gridx,gridy,rooms);
		return rooms.image_index;
	}
	
}