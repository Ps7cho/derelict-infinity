/// @description 
if distance_to_object(Player) < draw_distance {
	

draw_sprite_ext(sprite_index,subimg,x,y,3,3,0,c_white,1);

if !been_announced{
	ds_list_add(newsFeed, ENEMYINFO[@ creature_type, enemyinfo.name]+" has arrived");	
	been_announced = true;
}
}