/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
if(charging)
	draw_set_alpha(.3)
for(var i = 0; i < width; i+=.5)
	draw_circle(x,y,radius + i, 1)	
	
draw_set_alpha(1)