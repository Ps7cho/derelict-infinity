/// @description 
globalvar collems, rows, grid, tileWidth, tileHeight;
tileWidth = 192;
tileHeight = 128;

startx = tileWidth;
starty = tileHeight;
numberofPlayers = 4;

randomize()
collems = room_width/tileWidth;
rows = room_height/tileHeight;

grid = ds_grid_create(collems, rows);

draw_set_color(c_white);

for (var i = 0; i < numberofPlayers; i++){
		var me = instance_create_layer(startx,starty,"players",Player)
		instance_create_layer(startx,starty,"floor",floorTile);
		rooms = instance_create_layer(startx,starty,"walls", Room);
		rooms.image_index = 1;
		ds_grid_add(grid,startx/tileWidth,starty/tileHeight,3);
		startx += tileWidth;
		me.offset = (i*30)-50;
		me.position = i;
}

openings = 1;