/// @description 
//Draw Head
scale = 5;
switch (position){
	case 0: draw_circle_color(16*scale,16*scale,radius*scale,color,color,false);
			draw_sprite_ext(sprHeadshots,0,16*scale, 16*scale,scale,scale,0,-1,1); break;
	case 1: draw_circle_color(16*scale, view_hport[0]-24*scale,radius*scale,color,color,false);
			draw_sprite_ext(sprHeadshots,1,16*scale, view_hport[0]-24*scale,scale,scale,0,-1,1); break;
	case 2: draw_circle_color(view_wport[0]-16*scale, 16*scale,radius*scale,color,color,false);
			draw_sprite_ext(sprHeadshots,2,view_wport[0]-16*scale, 16*scale,scale,scale,0,-1,1); break;
	case 3: draw_circle_color(view_wport[0]-16*scale, view_hport[0]-24*scale,radius*scale,color,color,false);
			draw_sprite_ext(sprHeadshots,3,view_wport[0]-16*scale, view_hport[0]-24*scale,scale,scale,0,-1,1); break;
}