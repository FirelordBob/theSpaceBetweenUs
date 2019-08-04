/// @description Insert description here
// You can write your code in this editor
if(!collected)
{
	collected = 1
	image_xscale = 1
	image_yscale = 1
	other.friendArray[array_length_1d(other.friendArray)] = object_index
	with(instance_create_depth(0,0,0,obj_dialogue))
	{
		dialogue = other.dialogue
		name = other.name
	}
	if (!audio_is_playing(song)){
		track = audio_play_sound(song,1,1);
		with player {
			audio_sound_set_track_position(other.track,audio_sound_get_track_position(track))
		}
	}
}