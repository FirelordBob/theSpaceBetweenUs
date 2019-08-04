if currentHealth = 0 {
	game_restart()
}

if(bounce(obj_forcefield)) {
	if(!invincible){
		currentHealth--
		invincible = 1;
		alarm_set(1,invincibilityTimer)
		if(!audio_is_playing(snd_gethit)){
			audio_play_sound(snd_gethit,100,0)
		}
	}	
}
if newtFriend && newtStuck == 0 {
	if stick(obj_ground) {
		newtStuck = 1;
	}
} else {
	bounce(obj_ground);
}

if(place_meeting(x,y,obj_explosion_severe)){
	if(!invincible){
		currentHealth--
		invincible = 1;
		alarm_set(1,invincibilityTimer)
		if(!audio_is_playing(snd_gethit)){
			audio_play_sound(snd_gethit,100,0)
		}

	}
}
speed = clamp(speed,0,maxSpeed)
var barrier = 0
with(obj_barrier)
	if(active)
		barrier = 1

if(barrier)
	bounce(obj_barrier)
	
bounce(obj_turret)
bounce(obj_sound_turret)
if(bounce(obj_drone)) {
	if(!invincible){
		currentHealth--
		invincible = 1;
		alarm_set(1,invincibilityTimer)
		if(!audio_is_playing(snd_gethit)){
			audio_play_sound(snd_gethit,100,0)
		}

	}
	speed = clamp(speed,2,maxSpeed)
}