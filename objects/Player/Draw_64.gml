/// @description 
//Draw Head
armorx = 80;
armory = 80;
x1 = view_xport[position];
y1 = view_yport[position];
x2 = view_xport[position]+528;
y2 = view_yport[position]+160;

xx1 = view_xport[position]+view_wport[position]-528;
xx2 = view_xport[position]+view_wport[position];

yy1 = view_yport[position]+view_hport[position]-160;
yy2 = view_yport[position]+view_hport[position];


draw_set_alpha(0.2);

switch (position){
	case 0: draw_roundrect_color(x1,y1,x2,y2,color,color,false);
			//draw_roundrect_color(x1,y1,x2,y2,c_black,c_black,true);
			draw_set_alpha(1);
			draw_circle_color(armorx,armory,radius*headScale,color,color,false); 
			draw_sprite_ext(sprHeadshots,0,armorx, armory,headScale,headScale,0,-1,1);
			armorx += 120;
			draw_sprite_ext(helmetSpr,helmetTier,	armorx,armory ,armorScale,armorScale,0,-1,1); armorx+=70;
			draw_sprite_ext(chestSpr,chestTier,		armorx,armory ,armorScale,armorScale,0,-1,1);	armorx+=70;
			draw_sprite_ext(glovesSpr,glovesTier,		armorx,armory ,armorScale,armorScale,0,-1,1);	armorx+=70;
			draw_sprite_ext(pantsSpr,pantsTier,		armorx,armory ,armorScale,armorScale,0,-1,1);	armorx+=70;
			draw_sprite_ext(bootsSpr,bootsTier,		armorx,armory ,armorScale,armorScale,0,-1,1); 
			
			
			break;			
	case 1: draw_roundrect_color(xx1,y1,xx2,y2,color,color,false);
			draw_roundrect_color(xx1,y1,xx2,y2,c_black,c_black,true);
			draw_set_alpha(1);
			armorx = view_xport[1]+view_wport[1]-armorx;
			draw_circle_color(armorx, armory,radius*headScale,color,color,false);
			draw_sprite_ext(sprHeadshots,2,armorx, armory,headScale,headScale,0,-1,1);
			armorx -= 120;
			draw_sprite_ext(bootsSpr,bootsTier,     armorx,armory ,armorScale,armorScale,0,-1,1); armorx-=70;
			draw_sprite_ext(pantsSpr,pantsTier,    armorx,armory ,armorScale,armorScale,0,-1,1); armorx-=70;
			draw_sprite_ext(glovesSpr,glovesTier,    armorx,armory ,armorScale,armorScale,0,-1,1); armorx-=70;
			draw_sprite_ext(chestSpr,chestTier,  armorx,armory ,armorScale,armorScale,0,-1,1); armorx-=70;
			draw_sprite_ext(helmetSpr,helmetTier,   armorx,armory ,armorScale,armorScale,0,-1,1);
			break;
	case 2: draw_roundrect_color(x1,yy1,x2,yy2,color,color,false);
			draw_roundrect_color(x1,yy1,x2,yy2,c_black,c_black,true);
			draw_set_alpha(1);
			armory = view_yport[2]+view_hport[2]-80;
			draw_circle_color(armorx,armory,radius*headScale,color,color,false);
			draw_sprite_ext(sprHeadshots,1,armorx, armory,headScale,headScale,0,-1,1); 
			armorx += 120;
			draw_sprite_ext(helmetSpr,helmetTier,  armorx,armory ,armorScale,armorScale,0,-1,1); armorx+=70;
			draw_sprite_ext(chestSpr,chestTier,		armorx,armory ,armorScale,armorScale,0,-1,1); armorx+=70;
			draw_sprite_ext(glovesSpr,glovesTier,  armorx,armory ,armorScale,armorScale,0,-1,1); armorx+=70;
			draw_sprite_ext(pantsSpr,pantsTier,   armorx,armory ,armorScale,armorScale,0,-1,1); armorx+=70;
			draw_sprite_ext(bootsSpr,bootsTier,   armorx,armory ,armorScale,armorScale,0,-1,1); 
			break;
	case 3: draw_roundrect_color(xx1,yy1,xx2,yy2,color,color,false);
			draw_roundrect_color(xx1,yy1,xx2,yy2,c_black,c_black,true);
			draw_set_alpha(1);
			armorx = view_xport[3]+view_wport[3]-armorx;
			armory = view_yport[3]+view_hport[3]-80;
			draw_circle_color(armorx, armory,radius*headScale,color,color,false);
			draw_sprite_ext(sprHeadshots,3,armorx, armory,headScale,headScale,0,-1,1);
			armorx -= 120;
			draw_sprite_ext(bootsSpr,bootsTier,		  armorx,armory ,armorScale,armorScale,0,-1,1); armorx-=70;
			draw_sprite_ext(pantsSpr,pantsTier,		  armorx,armory ,armorScale,armorScale,0,-1,1); armorx-=70;
			draw_sprite_ext(glovesSpr,glovesTier,		armorx,armory ,armorScale,armorScale,0,-1,1); armorx-=70;
			draw_sprite_ext(chestSpr,chestTier,		 armorx,armory ,armorScale,armorScale,0,-1,1); armorx-=70;
			draw_sprite_ext(helmetSpr,helmetTier,	 armorx,armory ,armorScale,armorScale,0,-1,1); 
			break;
}

