var xx = argument[0];
var yy = argument[1];
var roomID = argument[2];

if !position_meeting(xx,yy,Room) {
	if xx-tileWidth < 0 {
		roomID = 16;
	}else if yy-tileHeight < 0 {
		roomID = 19;
	}else if  xx +tileWidth > room_width {
		roomID = 18;
	}else if yy > room_height{
		roomID = 17;
	}else{
	instance_create_layer(xx, yy, "floor", floorTile);
	}
	var rooms = instance_create_layer(xx,yy,"walls", Room);
	rooms.image_index = roomID;
}
