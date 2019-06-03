/// @description 
image_speed = 0;
showDistance = 1000;
close = true;
var loot = irandom(100);
if loot < 5 {
	var lootTable = irandom(4);

	switch lootTable{
		case 0: with (instance_create_layer(x,y,"walls",objHelmet)	) gearType = Gear.helmet; break;
		case 1: with (instance_create_layer(x,y,"walls",objChest)	) gearType = Gear.chest; break;
		case 2: with (instance_create_layer(x,y,"walls",objBoots)	) gearType = Gear.boots; break;
		case 3: with (instance_create_layer(x,y,"walls",objGloves)	) gearType = Gear.gloves; break;
		case 4: with (instance_create_layer(x,y,"walls",objPants)	) gearType = Gear.pants; break;
	}
}

if loot > 97 {
	/*var enemytable = irandom(7);
	
	switch enemytable{*/
		instance_create_layer(x,y,"walls", objEnemy); //break;
	//}
}

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

init = false;