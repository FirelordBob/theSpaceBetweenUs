if(!place_meeting(x,y,obj_player)) {
	instance_create_depth(x,y,depth,obj_forcefield);
	instance_destroy();
	audio_play_sound(snd_forcecreate,100,0)
} else {
	alarm_set(0,10)
}