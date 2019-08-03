/// @description Shoot blast
// You can write your code in this editor

if(instance_exists(myBullet)){
	//Change my speed
	vspeedChange = sin(facing*pi/180)*gunPower;
	hspeedChange = -cos(facing*pi/180)*gunPower;
	vspeed += vspeedChange;
	hspeed += hspeedChange;

	//Change player speed
	myPlayer.vspeed += vspeedChange;
	myPlayer.hspeed += hspeedChange;

	//Change bullet speed
	myBullet.vspeed -= 2*vspeedChange;
	myBullet.hspeed -= 2*hspeedChange;

	//Release bullet from my ownership
	myBullet.myGun = noone;
	myBullet = noone;

	//Reset gunPower
	gunPower = gunPowerMinimum;

	//Set cooldown timer
	canIFire = 0;
	alarm_set(1,cooldownTimer);
}