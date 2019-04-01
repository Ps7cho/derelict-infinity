/// @description 
k = 0
for (var i = 0; i < sprite_height/16; i ++){
	for (var j = 0; j < sprite_width/16; j++){
		draw_sprite(Floors0,tile[k],(x-88)+j*16,(y-56)+i*16);	
		k++;
	}
}