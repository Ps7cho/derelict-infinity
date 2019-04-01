
if keyboard_check_pressed(right){
	subimg = 0;
	if x+ tileWidth < room_width{
		movementFunctions(0);
	}
}
if keyboard_check_pressed(up){ 
	subimg = 1;
	//check if out of bounds ()
	if y-tileHeight > 0{
		movementFunctions(1);
	}
}
if keyboard_check_pressed(left){ 
	subimg = 2;
	if x- tileWidth > 0 {
		movementFunctions(2);
	}
}
if keyboard_check_pressed(down){ 
	subimg = 3;
	if y+tileHeight < room_height{
		movementFunctions(3);
	}
}

