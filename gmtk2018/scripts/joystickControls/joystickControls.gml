var playerNum = argument0;

leftStickH = gamepad_is_connected(playerNum) ? gamepad_axis_value(playerNum, gp_axislh) : 0;
if(leftStickH < -.2)
{
	leftDown = 1;	
}
if(leftStickH > .2)
{
	rightDown = 1;	
}
leftStickV = gamepad_is_connected(playerNum) ? gamepad_axis_value(playerNum, gp_axislv) : 0;
if(leftStickV < -.2)
{
	upDown = 1;	
}
if(leftStickV > .2)
{
	downDown = 1;	
}

if(gamepad_is_connected(playerNum) && (gamepad_button_check(playerNum, gp_face4) || gamepad_button_check_released(playerNum, gp_face4)))
{
	jumpDown = 1;
}

if(gamepad_is_connected(playerNum) && gamepad_button_check_released(playerNum, gp_face4))
{
	jumpReleased = 1;
}


if(gamepad_is_connected(playerNum) && (gamepad_button_check(playerNum, gp_face1) || gamepad_button_check_released(playerNum, gp_face1)))
{
	fastDown = 1;
}

if(gamepad_is_connected(playerNum) && gamepad_button_check_released(playerNum, gp_face1))
{
	fastReleased = 1;
}

if(gamepad_is_connected(playerNum) && (gamepad_button_check(playerNum, gp_face2) || gamepad_button_check_released(playerNum, gp_face2)))
{
	slowDown = 1;
}


if(gamepad_is_connected(playerNum) && gamepad_button_check_released(playerNum, gp_face2))
{
	slowReleased = 1;
}

if(gamepad_is_connected(playerNum) && (gamepad_button_check(playerNum, gp_shoulderrb) || gamepad_button_check_released(playerNum, gp_shoulderrb)))
{
	sprintDown = 1;
}