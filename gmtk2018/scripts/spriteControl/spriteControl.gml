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
if(!rightDown && !leftDown && currentSprite = spr_playerRun) 
{
	currentSprite = spr_playerIdle
	currentImageIndex = 0;		
}

if(fastDown && fastReleased && attackReady && (currentSprite = spr_playerIdle || currentSprite = spr_playerJumpIdle ))
{
	currentSprite = spr_playerMidPunch;
	var effect =  instance_create_depth(x,y-sprite_height/2,depth-1,obj_midPunchEffect);
	effect.creator = id;
	if(currentEle = "fire")
		effect.sprite_index = asset_get_index("spr_midPunchEffect" + currentEle);
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}

else if(slowDown && slowReleased && attackReady  && (currentSprite = spr_playerIdle || currentSprite = spr_playerJumpIdle ))
{
	var effect =  instance_create_depth(x,y-sprite_height/2,depth-1,obj_midKickEffect);
	effect.creator = id;
	if(currentEle = "fire")
		effect.sprite_index = asset_get_index("spr_midKickEffect" + currentEle);
	currentSprite = spr_playerMidKick;
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}

else if(downDown && (currentSprite = spr_playerIdle && currentSprite != spr_playerEnterCrouch))
{
	currentSprite = spr_playerEnterCrouch;
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}
else if(!downDown && (currentSprite = spr_playerEnterCrouch || currentSprite = spr_playerCrouchIdle))
{
	currentSprite = spr_playerExitCrouch;
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}
 if(jumpReady && jumpDown && jumpReleased && !(grabLeft || grabRight) && currentSprite != spr_playerJumpStart && currentSprite != spr_playerJumpIdle)
{
	jumpReady = 0;
	currentSprite = spr_playerJumpStart	
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}
if(jumpReady && jumpDown && jumpReleased && (grabLeft || grabRight) && currentSprite != spr_playerWallJumpStart && currentSprite != spr_playerJumpIdle)
{
	jumpReady = 0;
	currentSprite = spr_playerWallJumpStart	
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}
if(!onGround && currentSprite = spr_playerIdle && !grabLeft && !grabRight)
{
	currentSprite = spr_playerJumpIdle	
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}
if(!onGround && currentSprite = spr_playerIdle && (grabLeft || grabRight))
{
	currentSprite = spr_playerWallGrab	
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}
if(onGround && currentSprite = spr_playerJumpIdle)
{
	currentSprite = spr_playerJumpLand	
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}