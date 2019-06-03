/// @description 
draw_circle_color(x-offset,y,radius,color,color,false);

switch (position){
	case 0: draw_sprite_ext(sprite4,subimg,x-offset,y,playerScale,playerScale,0,-1,1); break;
	case 1: draw_sprite_ext(sprite1,subimg,x-offset,y,playerScale,playerScale,0,-1,1); break;
	case 2: draw_sprite_ext(sprite2,subimg,x-offset,y,playerScale,playerScale,0,-1,1); break;
	case 3: draw_sprite_ext(sprite3,subimg,x-offset,y,playerScale,playerScale,0,-1,1); break;
}