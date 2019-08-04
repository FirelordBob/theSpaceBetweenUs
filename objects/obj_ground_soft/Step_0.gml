if dyingflag && !dying{
	alarm_set(0,deathtimer);
	dying = 1;
	audio_play_sound(snd_wallsdestroyed,30,0);
}