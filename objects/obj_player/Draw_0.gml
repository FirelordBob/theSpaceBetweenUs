/// @description 
draw_sprite_ext(sprite0_dupe,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

if invincible{
	draw_sprite_ext(sprite0_dupe,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,alarm_get(1)/invincibilityTimer);
}