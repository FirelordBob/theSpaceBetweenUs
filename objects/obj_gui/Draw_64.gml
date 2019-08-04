if instance_exists(myPlayer) {
	draw_text(view_xport[0]+100,view_yport[0]+20,"Health: " + string(myPlayer.currentHealth))

}
draw_sprite(spr_pause,0, display_get_gui_width()-60,20)

		