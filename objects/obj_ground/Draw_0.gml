if !dying{
	alpha = 1;	
} else {
	alpha = alarm_get(0)/deathtimer;
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,alpha);
