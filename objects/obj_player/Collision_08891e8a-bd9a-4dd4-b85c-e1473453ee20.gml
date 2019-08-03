/// @description Insert description here
// You can write your code in this editor

if(!invincible){
	move_bounce_all(0)
	currentHealth--
	invincible = 1;
	alarm_set(1,invincibilityTimer)
	speed+=1
}
