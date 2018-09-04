/// @description Insert description here
// You can write your code in this editor
creator = 0;
charging = 1;
currentEle = "earth"
dir = 1;
moveSpeed = 40;
maxDist = 720
alarm_set(0,1)
image_yscale = .1;
image_alpha = 0
alarm_set(1,100)
while(place_meeting(x,y-2,obj_player))
	y++