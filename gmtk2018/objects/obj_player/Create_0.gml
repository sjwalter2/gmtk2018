/// @description Insert description here
// You can write your code in this editor
globalInit();

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
fastFall = 10
jumpTime = 4
hopSpeed = 50
jumpSpeed = 25
onGround = 0
bouncePrep = 0
bounceHeight = 7
grabLength = 12

fallSpeed = 60
maxSpeed = 32
speedGrowth = 4
grabRight = 0
grabLeft = 0
fric = 5
grav = 3.5

stunned = 0
maxStunTime = 50
stunTime = 50

facing = 1; //1 is right, -1 is left

timeSinceAttack = 0;
slowAttackDelay = 30;
fastAttackDelay = 15;

airKnockback = 30;

alarm_set(1,-1);