/// @description 
alarm[0] = 60; //bob up and down
subimg = 0;
image_speed = 0;
creature_type = irandom(creature.last-1);

draw_distance = 1000;

sprite_index = ENEMYINFO[@ creature_type, enemyinfo.sprite];
been_announced = false;

canMove = 0;