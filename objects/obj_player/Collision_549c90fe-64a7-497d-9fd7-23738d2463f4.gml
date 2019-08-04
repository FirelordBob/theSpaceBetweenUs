/// @description Insert description here
// You can write your code in this editor
if(!invincible){
	currentHealth--
	invincible = 1;
	alarm_set(1,invincibilityTimer)
	if(!audio_is_playing(snd_gethit)){
		audio_play_sound(snd_gethit,100,0)
	}
}
instance_destroy(other)