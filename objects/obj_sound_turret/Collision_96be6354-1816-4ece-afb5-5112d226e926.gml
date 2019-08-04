/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
currentHealth -= other.damage
if(!audio_is_playing(snd_lazerdies)){
	audio_play_sound(snd_lazerdies,180,0);
}