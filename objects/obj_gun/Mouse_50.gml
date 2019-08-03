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