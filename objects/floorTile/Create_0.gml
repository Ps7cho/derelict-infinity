/// @description 
image_speed = 0;

//make a door from traveled direction


tile = array_create(96);
k = 0;
for (var i = 0; i < sprite_height/16; i ++){
	for (var j = 0; j < sprite_width/16; j++){
		tilenumber = irandom(1);
		if tilenumber = 1{
			tile[k] = 0;	
		}else{
			tile[k] = irandom(7);
		}
		k++;
	}
}