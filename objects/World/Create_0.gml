/// @description 
globalvar collems, rows, grid, tileWidth, tileHeight, newsFeed;
tileWidth = 192;
tileHeight = 128;

startx = tileWidth;
starty = tileHeight;
numberofPlayers = 1;

randomize()
collems = room_width/tileWidth;
rows = room_height/tileHeight;

grid = ds_grid_create(collems+2, rows+2);//magic numbers make the grid big enough for spill over.
ds_grid_clear(grid,-1);

roomx1 = floor(collems/5);
roomy1 = floor((rows/5)*3);

	
ds_grid_set_region(grid,roomx1,roomy1,roomx1+8,roomy1+7,14);
//ds_grid_set_region(grid,roomx1+2,roomy1+2,roomx1+6,roomy1+5,14);
for (var i = 1; i<7; i++){
	ds_grid_set(grid,roomx1+i,roomy1+1,10);
	ds_grid_set(grid,roomx1+i,roomy1+7,8);
	ds_grid_set(grid,roomx1+1,roomy1+i,11);
	ds_grid_set(grid,roomx1+7,roomy1+i,9);
}
ds_grid_set(grid,roomx1+1,roomy1+1,6);//corners
ds_grid_set(grid,roomx1+1,roomy1+7,7);
ds_grid_set(grid,roomx1+7,roomy1+1,5);
ds_grid_set(grid,roomx1+7,roomy1+7,4);
ds_grid_set(grid,roomx1+5,roomy1+1,14);//door

draw_set_color(c_white);

//Camera Numbers
width	 = 1920;
height	 = 1080;
angle	 = 0;
x_speed	 = 0;
y_speed	 = 0;
x_border = 20;
y_border = 5;

InitItems();
InitCreatures();


for (var i = 0; i < numberofPlayers; i++){
		var me = instance_create_layer(startx,starty,"players",Player)
		instance_create_layer(startx,starty,"floor",floorTile);
		rooms = instance_create_layer(startx,starty,"walls", Room);
		rooms.image_index = 1;
		ds_grid_set(grid,startx/tileWidth,starty/tileHeight,1);
		startx += tileWidth;
		me.offset = (i*30)-50;
		me.position = i;
		
		view_camera[i] = camera_create_view(0, 0, width, height, angle, me, x_speed, y_speed, x_border, y_border);
}

openings = 1;

newsFeed = ds_list_create();
newsTimeOut = 300;



