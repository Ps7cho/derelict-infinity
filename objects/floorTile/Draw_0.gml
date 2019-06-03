/// @description 
if close{
	
	k = 0
	for (var i = 0; i < sprite_height/32; i ++){
		for (var j = 0; j < sprite_width/32; j++){
			draw_sprite(Floors0,tile[k],(x-80)+j*32,(y-48)+i*32);	
			k++;
		}
	}
}