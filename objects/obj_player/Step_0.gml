if currentHealth = 0 {
	room_restart();
}

if(bounce(obj_forcefield)) {
	if(!invincible){
		currentHealth--
		invincible = 1;
		alarm_set(1,invincibilityTimer)
	}	
}
speed = clamp(speed,0,maxSpeed)