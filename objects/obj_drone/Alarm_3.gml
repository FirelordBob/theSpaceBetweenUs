/// @description Insert description here
// You can write your code in this editor
alarm_set(0,moveTimer)
direction = irandom(360)
speed = moveSpeed
bullet.released = 1
bullet = noone
ready = 1
firing = 0
audio_play_sound(dronehellosound,101,0)