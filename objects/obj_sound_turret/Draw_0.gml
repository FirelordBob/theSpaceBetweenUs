/// @description Insert description here
// You can write your code in this editor
image_blend = merge_color(c_red,c_white,currentHealth/maxHealth)
if(alarm_get(1) != -1)
	image_alpha = alarm_get(1)/deathtimer
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,angle,image_blend,image_alpha)