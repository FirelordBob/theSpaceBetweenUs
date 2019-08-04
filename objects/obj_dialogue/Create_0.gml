/// @description Insert description here
// You can write your code in this editor
dialogueMaxWidth = 30
dialogueWidth = 0
xx = display_get_gui_width()/2 - (sprite_width*(dialogueWidth+2))/2
yy = display_get_gui_height() - sprite_height*1.5

dialogue = []
spriteNum = 7
name = "Tippy"
dialogueCount = 0
closing = 0
readTime = 200
alarm_set(1,1)
alarm_set(0,readTime)
with(obj_dialogue)
	if(id != other.id)
		instance_destroy()