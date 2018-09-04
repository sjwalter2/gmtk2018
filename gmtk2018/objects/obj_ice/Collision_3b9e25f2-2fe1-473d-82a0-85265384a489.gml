/// @description Insert description here
// You can write your code in this editor
if(landed)
{
		knockBack(other, 0, 0, 0, freezeTime, 0);
} else if (!landed && other.id != creator)
{
	while !place_meeting(x+sign(hspeed),y,other)
      {
           x+=sign(hspeed);
      }
	knockBack(other, 0, 0, 0, freezeTime, 0);

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