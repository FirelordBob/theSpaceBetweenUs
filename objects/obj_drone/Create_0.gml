/// @description Insert description here
// You can write your code in this editor
moveTimer = 200
waitTimer = 10
fireTime = 60
boss = 0
direction = irandom(360)
moveSpeed = 1.5
ready = 1
firing = 0
speed = moveSpeed

maxHealth = 50
currentHealth = maxHealth

alarm_set(0,moveTimer)
deathtimer = 60
lastSpeed = 0
range = 300