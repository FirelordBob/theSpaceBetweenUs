/// @description Insert description here
// You can write your code in this editor
if(!closing && dialogueWidth < dialogueMaxWidth)
	dialogueWidth++
else if(closing && dialogueWidth > 0)
	dialogueWidth--
else if(closing)
	instance_destroy()
	
xx = display_get_gui_width()/2 - (sprite_width*(dialogueWidth+2))/2
draw_set_alpha(.8)
draw_sprite(sprite_index,0,xx,yy)
draw_sprite_ext(sprite_index,1,xx+sprite_width,yy,dialogueWidth,1,0,c_white,.8)
draw_sprite(sprite_index,2,xx+sprite_width*(dialogueWidth + 1),yy)
draw_set_color(c_dkgray)
if(dialogueWidth == dialogueMaxWidth && dialogueCount < array_length_1d(dialogue))
{
	if(spriteNum != -1)
		draw_sprite(spr_critters,spriteNum,xx,yy)
	draw_set_font(font0)
	
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_text(xx + sprite_width,yy+32,name)
	draw_set_halign(fa_center)
	draw_text_ext(xx+sprite_width + (dialogueWidth*sprite_width/2),yy+sprite_height/2,dialogue[dialogueCount],30,(dialogueWidth-2)*sprite_width)
	
}
draw_set_color(c_white)
draw_set_alpha(1)