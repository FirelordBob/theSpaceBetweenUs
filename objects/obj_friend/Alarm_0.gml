/// @description Insert description here
// You can write your code in this editor
if(!collected)
{
	radius = 32
	image_xscale = 2
	image_yscale = 2
} else {
	if(!audio_is_playing(song)){
		track = audio_play_sound(song,1,1);
		with player {
			audio_sound_set_track_position(other.track,audio_sound_get_track_position(track))
		}
	}
}