/// @description Shoot blast
// You can write your code in this editor

if(instance_exists(myBullet)){
	//Change my speed
	vspeedChange = sin(facing*pi/180)*sqr(gunPower);
	hspeedChange = -cos(facing*pi/180)*sqr(gunPower);
	vspeed += vspeedChange;
	hspeed += hspeedChange;

	//Change player speed
	myPlayer.vspeed += vspeedChange*1.25;
	myPlayer.hspeed += hspeedChange*1.25;

	//Change bullet speed
	myBullet.vspeed -= 4*(sin(facing*pi/180));
	myBullet.hspeed -= 4*(-cos(facing*pi/180));

	//Release bullet from my ownership
	myBullet.myGun = noone;
	myBullet = noone;

	//Reset gunPower
	gunPower = gunPowerMinimum;

	//Set cooldown timer
	canIFire = 0;
	alarm_set(1,cooldownTimer);
	room_speed = halfSpeed*1.5
}