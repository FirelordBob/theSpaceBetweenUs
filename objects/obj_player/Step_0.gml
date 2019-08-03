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
if newtFriend && newtStuck == 0 {
	if stick(obj_ground) {
		newtStuck = 1;
	}
} else {
	bounce(obj_ground);
}
speed = clamp(speed,0,maxSpeed)