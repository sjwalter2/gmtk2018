/// @description Insert description here
// You can write your code in this editor

if(playerNumber = 0)
{
if(keyCheck(global.leftKey, 1))
	leftDown = 1

if(keyCheck(global.rightKey, 1))
	rightDown = 1
	
if(keyCheck(global.downKey, 1))
	downDown = 1
	
if(keyCheck(global.upKey, 1))
	upDown = 1	

if(keyCheck(global.jumpKey, 1))
	jumpDown = 1	
	
if(keyCheck(global.jumpKey, 0))
	jumpReleased = 1	

if(keyCheck(global.sprintKey, 1))
	sprintDown = 1

if(keyCheck(global.slowKey, 1))
	slowDown = 1
	
if(keyCheck(global.slowKey, 0))
	slowReleased = 1
	
if(keyCheck(global.fastKey, 1))
	fastDown = 1

if(keyCheck(global.fastKey, 0))
	fastReleased = 1

}
else
{
	joystickControls(playerNumber-1)
}


//check on ground for friction
if place_meeting(x,y+1,obj_platform)
{
	onGround = 1
	friction = fric
}
else
{
	friction = 0	
}


//no input if stunned or onFire
if(stunned)
{
	leftDown = 0
	rightDown = 0
	jumpDown = 0
	upDown = 0
	downDown = 0
	sprintDown = 0
	grabLeft = 0
	grabRight = 0
	friction = 0
}
if(onFire) //forcedrun on fire
{
	switch facing{
		case -1:
			leftDown = 1;
			rightDown = 0;
			break;
		case 1:
			rightDown = 1;
			leftDown = 0;
			break;
	}
}

//crouch
if(onGround && downDown)
	image_yscale = .5
else
{
	image_yscale = 1
	while(position_meeting(bbox_right,bbox_bottom,obj_platform) && position_meeting(bbox_left,bbox_bottom,obj_platform))
		y--
	while(position_meeting(bbox_right,bbox_top,obj_platform) && position_meeting(bbox_right,bbox_bottom,obj_platform))
		x--
	while(position_meeting(bbox_left,bbox_top,obj_platform) && position_meeting(bbox_left,bbox_bottom,obj_platform))
		x++
}


//limit and increase vspeed
if vspeed < fallSpeed
{
	if(vspeed < 0 && jumpDown)
		vspeed+= grav - jumpDown;
	else if(vspeed < 0)
		vspeed+= grav
	else
		vspeed+=grav  + grav*(vspeed/fallSpeed);
}
else
	vspeed=fallSpeed;

//left and right collisions
if(!stunned && leftDown && hspeed > -maxSpeed - sprintDown*maxSpeed/2)
{
	hspeed-= (speedGrowth+friction*2)+maxSpeed*sprintDown
	if(grabRight)
	{
		grabRight = 0
		alarm_set(0,jumpTime)
	}
		
}
if( hspeed < -maxSpeed - sprintDown*maxSpeed*.5 && !stunned)
{
	 hspeed = -maxSpeed - sprintDown*maxSpeed*.5
}

if(!stunned && rightDown && hspeed < maxSpeed + sprintDown*maxSpeed/2)
{
	hspeed+= (speedGrowth+friction*2)+maxSpeed*sprintDown
	if(grabLeft)
	{
		grabLeft = 0
		alarm_set(0,jumpTime)	
	}
}
if( hspeed > maxSpeed + sprintDown*maxSpeed*.5 && !stunned)
{
	 hspeed = maxSpeed + sprintDown*maxSpeed*.5
}

//Grabbing
if(!downDown && sign(vspeed) != -1 && sign(floor(hspeed/5)) != -1 && !position_meeting(bbox_right+grabLength,bbox_top,obj_platform) && position_meeting(bbox_right+grabLength,bbox_top+vspeed*2+5,obj_platform) && !stunned)
	{
		var inst = instance_position(bbox_right+grabLength,bbox_top+vspeed*2+5,obj_platform)
		grabRight = 1	
		grabLeft = 0
		vspeed = 0
		hspeed = 0
		while(bbox_top < inst.bbox_top)
			y++
		while(bbox_top > inst.bbox_top)
			y--
		while(bbox_right < inst.bbox_left-1)
			x++
	}
if(!downDown && sign(vspeed) != -1 && sign(floor(hspeed/5)) != 1 && !position_meeting(bbox_left-grabLength,bbox_top,obj_platform) && position_meeting(bbox_left-grabLength,bbox_top+vspeed*2+5,obj_platform) && !stunned)
	{
		var inst = instance_position(bbox_left-grabLength,bbox_top+vspeed*2+5,obj_platform)
		grabLeft = 1
		grabRight = 0
		vspeed = 0
		hspeed = 0
		while(bbox_top < inst.bbox_top)
			y++
		while(bbox_top > inst.bbox_top)
			y--
		while(bbox_left > inst.bbox_right+1)
			x--
	}

//horizontal collision
if place_meeting(x+hspeed,y,obj_platform) && !stunned
{
	
	while !place_meeting(x+sign(hspeed),y,obj_platform)
      {
           x+=sign(hspeed);
      }
	if onFire
	{
		facing = (facing * -1);
		if leftDown == 1
			leftDown = 0
		if rightDown == 1
			rightDown = 0
	}
	if place_meeting(x,y,obj_platform)
	{
		var inst = instance_place(x,y,obj_platform)
		if(x < inst.x)
			while(place_meeting(x,y,inst))
				x--
		else
			while(place_meeting(x,y,inst))
				x++
	}
hspeed=0;
}
if(downDown)
{
	grabRight = 0
	grabLeft = 0
	
}


//jumping


if(alarm_get(0) > 0 || onGround)
{
	jumpReady = 1
}

if(grabRight || grabLeft)
{
	jumpReady = 1
	vspeed = 0
}

//vertical collision
if((currentSprite = spr_playerJumpStart || currentSprite = spr_playerWallJumpStart  )&& currentImageIndex = 2)
{
	if(currentSprite = spr_playerWallJumpStart && (grabLeft || grabRight))
		hspeed = -hopSpeed/2 * currentImageDirection;
	if(vspeed < 0)
		vspeed = -hopSpeed
	else
		vspeed -= hopSpeed
	grabRight = 0
	grabLeft = 0
	jumpReleased = 0
	alarm_set(0,0)
}

if place_meeting(x,y+vspeed,obj_platform)
{
	
	if(sign(vspeed)=1 )
	{
		alarm_set(0,jumpTime)
		onGround = 1
	}
    while !place_meeting(x,y+sign(vspeed),obj_platform)
    {
         y+=sign(vspeed);
    }
friction = fric
vspeed=0;
}
else
	friction = 0


if(downDown && !onGround && vspeed < fallSpeed)
	vspeed += fastFall;

//Determine facing
if rightDown && !leftDown{
	facing = 1;
} else if !rightDown && leftDown{
	facing = -1;
}

//Handle Attacks
//slow attacks set the timer to some high amount
//fast attacks set the timer to some low amount
//you can only attack if the tiemr is at 0 or lower; decrements each Step

timeSinceAttack -= 1;

attackReady = 1;
if(timeSinceAttack > 0 || grabRight || grabLeft)
	attackReady = 0;

if(currentSprite = spr_playerMidPunch && currentImageIndex = 3 && timeSinceAttack <= 0)
{
	makeAttack(fastAttackObj);
	fastReleased = 0;
	timeSinceAttack = fastAttackDelay;
	attackReady = 0;
}
if(currentSprite = spr_playerMidKick && currentImageIndex = 3 && timeSinceAttack <= 0)
{
	makeAttack(slowAttackObj);
	slowReleased = 0;
	timeSinceAttack = slowAttackDelay;
	attackReady = 0;
}

spriteControl();



leftDown = 0
rightDown = 0
jumpDown = 0
upDown = 0
downDown = 0
sprintDown = 0
onGround = 0
slowDown = 0
fastDown = 0


