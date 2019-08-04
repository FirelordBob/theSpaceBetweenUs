/// @description Insert description here
// You can write your code in this editor
if(!collected)
{
	radius = 32
	image_xscale = 2
	image_yscale = 2
}

with player {
	sg[array_length_1d(sg)] = audio_play_in_sync_group(audiogroup, snd_elephant);
}
