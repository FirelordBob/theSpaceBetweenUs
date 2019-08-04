/// @description Insert description here
// You can write your code in this editor
if(image_blend != c_blue)
	image_blend = merge_color(c_red,c_white,currentHealth/maxHealth)
if(alarm_get(1) != -1)
	image_alpha = alarm_get(1)/deathtimer
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,angle,image_blend,image_alpha);
