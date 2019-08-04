/// @description Insert description here
// You can write your code in this editor
if(radius > 0)
{
	draw_set_alpha(.05)
	draw_set_color(c_white)
	for(var i = 0; i <radius; i++)
		draw_circle(x-1,y-2,i,0)

}
draw_set_alpha(1)
draw_self()