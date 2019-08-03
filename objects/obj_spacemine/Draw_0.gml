draw_set_color(c_teal)

if(currentHealth = 0)
	draw_set_alpha(0.1)
else
	draw_set_alpha(0.5)

for(var i = 0; i < width; i+=.25)
	draw_circle(x,y,radius + i, 1)	

image_blend = merge_color(c_red,c_white,currentHealth/maxHealth)
if(alarm_get(1) != -1)
	image_alpha = alarm_get(1)/deathtimer
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,angle,image_blend,image_alpha);
