/// @description Insert description here
// You can write your code in this editor
if(image_blend != c_blue)
	image_blend = merge_color(c_red,c_white,currentHealth/maxHealth)
if(alarm_get(2) != -1)
	image_alpha = alarm_get(2)/deathtimer
	
draw_self()