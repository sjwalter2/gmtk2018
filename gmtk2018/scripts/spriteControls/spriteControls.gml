

if(onGround && (rightDown || leftDown) && currentSprite = spr_playerIdle)
{
	currentSprite = spr_playerRun;
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}

if(rightDown)
{
	currentImageDirection = 1;	
}
else if(leftDown)
{
	currentImageDirection = -1;	
}



if(fastDown && fastReleased && attackReady)
{
	currentSprite = spr_playerMidPunch;
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}