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
	joystickControls(gamePadNum)

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
if(onGround)
	spawned = 0
if(spawned || fishing)
{
	stunned = 1;
	alarm_set(4,1)
	if(spawned)
		setInvincible(self,30);
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
	stunned = 0
	alarm_set(4,-1)
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
	if(onGround && irandom(50) = 0)
	{
		vspeed = -hopSpeed	
	}
	
}
playerFireParticle()

//crouch

	image_yscale = 1
	while(position_meeting(bbox_right,bbox_bottom,obj_platform) && position_meeting(bbox_left,bbox_bottom,obj_platform))
		y--
	while(position_meeting(bbox_right,bbox_top,obj_platform) && position_meeting(bbox_right,bbox_bottom,obj_platform))
		x--
	while(position_meeting(bbox_left,bbox_top,obj_platform) && position_meeting(bbox_left,bbox_bottom,obj_platform))
		x++



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
else if(!stunned)
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
		facing = 1
		currentImageDirection = 1
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
		facing = -1
		currentImageDirection = -1
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
	
if(grabLeft)
{
var release = 0;
	for(var i = 0; i < grabLength; i++)
		if(position_meeting(bbox_left-i,bbox_top+10,obj_platform))
			release = 1;
			
	if(!release)
		grabLeft = 0;
}
if(grabRight)
{
var release = 0;
	for(var i = 0; i < grabLength; i++)
		if(position_meeting(bbox_right+i,bbox_top+10,obj_platform))
			release = 1;
			
	if(!release)
		grabRight = 0;
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
if((currentSprite = spr_playerJumpStart && currentImageIndex = 0)||( currentSprite = spr_playerWallJumpStart && currentImageIndex = 2))
{
	if(currentSprite = spr_playerWallJumpStart && (grabLeft || grabRight))
	{
		hspeed = -hopSpeed/4 * currentImageDirection;
		currentImageDirection = -currentImageDirection	
	}
	if(vspeed < 0)
	{
		vspeed = -hopSpeed
	}
	else
	{
		vspeed = -hopSpeed
		audio_play_sound(snd_jump,0,0);
	}
	grabRight = 0
	grabLeft = 0
	jumpDown = 0
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


if(place_meeting(x,y,obj_platform))
{
	while(position_meeting(x,bbox_top,obj_platform)	)
	{
		y++;	
	}
}

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

if(currentSprite = spr_playerMidPunch && currentImageIndex =1 && timeSinceAttack <= 0)
{
	makeAttack(fastAttackObj);
	fastReleased = 0;
	timeSinceAttack = fastAttackDelay;
	attackReady = 0;
}
if(currentSprite = spr_playerMidKick && currentImageIndex = 2 && timeSinceAttack <= 0)
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

if x < -700 || x > room_width + 700 || y < -700 || y > room_height + 700
{
	audio_play_sound(snd_die,0,0);
	stock -= 1;
	if stock == 0
		instance_destroy();
	var spawner = instance_find(obj_spawner,0);
	var respawn = spawner.respawners[irandom(array_length_1d(spawner.respawners)-1)];
	x = respawn.x;
	y = 0;
	hspeed = 0;
	vspeed = 0;
	onFire = 0;
	alarm_set(3,-1);
	stunned = 0;
	alarm_set(4,-1);

	setElement(0);
	setElement(0);
	setInvincible(self,120);
	spawned = 1
}
