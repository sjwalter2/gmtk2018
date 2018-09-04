/// @description Start
// You can write your code in this editor


if(playerNumber != 0)
{
	for(var i = 0; i < 7; i++)
	{
		if(gamepad_is_connected(i) && !global.gamePads[i])	
		{
			gamePadNum = i;	
			global.gamePads[i] = 1;
			break;
		}
	}
}