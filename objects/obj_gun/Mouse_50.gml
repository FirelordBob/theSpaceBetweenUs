/// @description Charge blast

//If I'm allowed to fire (not on cooldown), increment gunPower upwards until maximum
if(canIFire){
	gunPower += gunPowerInc;
	if gunPower > gunPowerMaximum {
		gunPower = gunPowerMaximum;
	}
	//If this is the first frame of the new charge, we need to create a bullet to charge
	if myBullet == noone {
		myBullet = instance_create_depth(x,y,1,obj_blast);
		myBullet.myGun = self;
	}
	myBullet.image_xscale = gunPower/2.5;
	myBullet.image_yscale = gunPower/2.5;
}