
currentx = argument0;
currenty = argument1;
dir = argument2;

//check if a tile exists()
var gridx = currentx/tileWidth;
var gridy = currenty/tileHeight;
roomID = ds_grid_get(grid,gridx,gridy); 
if roomID = -1{ // if this room does not exist 

		type = irandom_range(1,3)
		if World.openings < 10 {
			type = 3;	
		}
		if type = 0{
			type += other.dir;
		}else if type = 1{
			type = wrap((type*4)+other.dir+irandom(1),4,7);
		}else if type = 2{
			type = wrap((type*4)+other.dir+irandom(2),8,11);	
		}else{ type = type*4;}
		

			World.openings += floor(type/4)-2;
			ds_grid_set(grid,gridx,gridy,type);
			
			return type;
}else{

	return roomID;	

}