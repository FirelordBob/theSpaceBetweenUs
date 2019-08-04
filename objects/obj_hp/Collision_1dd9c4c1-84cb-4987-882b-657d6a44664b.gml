/// @description Insert description here
// You can write your code in this editor
instance_destroy()
other.currentHealth+=3
if(other.currentHealth > other.maxHealth)
	other.currentHealth = other.maxHealth

audio_play_sound(snd_findafriend,200,0);