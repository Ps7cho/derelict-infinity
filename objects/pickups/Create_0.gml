/// @description 


image_speed = 0;

var lootTable = irandom(100);
if lootTable < 50 {
	image_index = 1;
	armor = 4;
	armorType = teir.low;
}else if lootTable >=50 and lootTable < 75{
	image_index = 2;
	armor = 12;
	armorType = teir.medium;
}else{
	image_index = 3;
	armor = 30;
	armorType = teir.high;
}
