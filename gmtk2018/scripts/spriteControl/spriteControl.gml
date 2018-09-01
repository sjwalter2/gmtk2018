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

 if(fastDown && fastReleased && attackReady && currentSprite != spr_playerMidPunch )
{
	currentSprite = spr_playerMidPunch;
	var effect =  instance_create_depth(x,y-sprite_height/2,depth-1,obj_midPunchEffect);
	effect.creator = id;
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}

 if(slowDown && slowReleased && attackReady  && currentSprite != spr_playerMidKick )
{
	var effect =  instance_create_depth(x,y-sprite_height/2,depth-1,obj_midKickEffect);
	effect.creator = id;
	currentSprite = spr_playerMidKick;
	currentImageIndex = 0;
	alarm_set(2,room_speed/sprite_get_speed(currentSprite))
}