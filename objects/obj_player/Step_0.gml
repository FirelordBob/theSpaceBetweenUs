if currentHealth = 0 {
	game_end()
}

bounce(obj_forcefield);
speed = clamp(speed,0,maxSpeed)