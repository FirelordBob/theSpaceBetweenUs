/// @description Charge blast

//If I'm allowed to fire (not on cooldown), increment gunPower upwards until maximum
if(canIFire){
	gunPower += gunPowerInc;
	if gunPower > gunPowerMaximum {
		gunPower = gunPowerMaximum;
	}
	//If this is the first frame of the new charge, we need to create a bullet to charge
	if myBullet == noone {
		myBullet = instance_create_depth(x,y,depth-1,obj_blast);
		myBullet.myGun = self;
	}
	if(instance_exists(myBullet))
	{
		myBullet.image_xscale = gunPower/2.5;
		myBullet.image_yscale = gunPower/2.5;
		myBullet.damage = power((gunPower*2),3)
	}
	else
	{
		alarm_set(1,cooldownTimer);
		myBullet = noone
		canIFire = 0
	}
}

if(!myPlayer.elephantFriend && instance_exists(myBullet)){
	//Change my speed
	vspeedChange = sin(facing*pi/180)*sqr(gunPower);
	hspeedChange = -cos(facing*pi/180)*sqr(gunPower);
	vspeed += vspeedChange;
	hspeed += hspeedChange;

	//Change player speed
	myPlayer.vspeed += vspeedChange*1.5;
	myPlayer.hspeed += hspeedChange*1.5;

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
}