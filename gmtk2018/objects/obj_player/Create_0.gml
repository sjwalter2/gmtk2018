/// @description Insert description here
// You can write your code in this editor
globalInit();
playerNumber = 0;
gamePadNum = -1;
stock = global.stock;

leftDown = 0
rightDown = 0
downDown = 0
upDown = 0
jumpDown = 0
jumpReleased = 1
sprintDown = 0
slowDown = 0
fastDown = 0
slowReleased = 1;
fastReleased = 1;

fallTimer = 0
fallTime = 4
fastFall = 5
jumpTime = 4
jumpReady = 0
hopSpeed = 55
jumpSpeed = 25
onGround = 0
bouncePrep = 0
bounceHeight = 7
grabLength = 60

fallSpeed = 80
maxSpeed = 32
speedGrowth = 4
grabRight = 0
grabLeft = 0
fric = 8
grav = 4.5

stunned = 0
maxStunTime = 50
stunTime = 50

maxSlipTime = 90;
maxOnFireTime = 50;
onFire = 0;

facing = 1; //1 is right, -1 is left

timeSinceAttack = 0;
slowAttackDelay = 35;
fastAttackDelay = 20;

ele0 = 0; //newest element picked up
ele1 = 0; //oldest element picked up
currentEle = 0; //this is the element that's actually used in attacks. set by "setElement"
fastAttackObj = 0;
slowAttackObj = 0;

airKnockback = 8;

invincibleFrames = 10; //number of frames the player will be invincible after getting hit by an attack.
tempInvincibility = 0; //this becomes 1 when hit by an attack which causes invincibility frames. resets to 0 with Alarm 5
invincibleAlpha = 0.5;
currentAlpha = 1;
drawAngle = 0;
fishing = 0;
currentSprite = spr_playerIdle;
currentImageIndex = 0;
currentImageDirection = 1;
alphaMod = 0;
spawned = 1;

alarm_set(2,room_speed/sprite_get_speed(currentSprite))

alarm_set(1,-1);
alarm_set(3,-1);
alarm_set(6,1)

playerParticle()


with(instance_create_depth(x,y,depth,obj_playerOutline))
{
	creator = other.id;	
}