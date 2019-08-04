/// @description Insert description here
// You can write your code in this editor
alarm_set(0,moveTimer)
direction = irandom(360)
speed = moveSpeed
ready = 1
firing = 0
if instance_exists(bullet){
	bullet.released = 1
	bullet = noone
}
audio_play_sound(dronehellosound,101,0)