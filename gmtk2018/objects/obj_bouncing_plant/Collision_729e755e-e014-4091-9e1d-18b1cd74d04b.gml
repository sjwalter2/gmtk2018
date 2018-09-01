/// @description Insert description here
// You can write your code in this editor
if(landed)
{
hitSound();
with(other)
{
	vspeed -= other.hitEffect;
	if(x > other.x)
		hspeed = other.horizHitEffect;
	else
		hspeed = -other.horizHitEffect;
}
} else if other.id != creator
{
	while !place_meeting(x+sign(hspeed),y,other)
      {
           x+=sign(hspeed);
      }
//	if place_meeting(x,y,other)
//	{
//		if(x < other.x)
//			while(place_meeting(x,y,other))
//				x--
//		else
//			while(place_meeting(x,y,other))
//				x++
//	}
	hspeed = 0;
}