/// @description 
font_set(fnt_small,fa_left,fa_left);
draw_text(500, 30, openings);
draw_text(600,80,fps_real)


var startfeedx = 200;
var startfeedy = 1000;

//draw_line_width_color(view_xport[1]-1,0,view_xport[1]+1,view_hport[1]*2,2,c_white,c_white);
//draw_line_width_color(view_wport[1]*2.1,view_hport[1]-1,0,view_hport[1]+1,2,c_white,c_white);

// news feed

//check if there is anything in the list 
var size = ds_list_size(newsFeed);
//draw them newest to oldest virticaly 
if size > 0 {
	for (var i = 0; i < size; i++){
		
		draw_text(startfeedx,startfeedy - i*50, string(newsFeed[|i]));	
	}
	newsTimeOut --;
}else{
	newsTimeOut = 300;	
}
//expire old entries
if newsTimeOut < 0 {
	ds_list_delete(newsFeed, 0);
	newsTimeOut = 100;
}