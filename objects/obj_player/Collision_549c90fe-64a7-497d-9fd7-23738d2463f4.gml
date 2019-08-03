/// @description Insert description here
// You can write your code in this editor
if(!invincible){
	currentHealth--
	invincible = 1;
	alarm_set(1,invincibilityTimer)
}
instance_destroy(other)