/// @description setElement(str newElement)

ele1 = ele0;
ele0 = argument[0];
if ele0 == "air"
{
	if ele1 == "air" || ele1 == 0
		currentEle = "air";
	else if ele1 == "water"
		currentEle = "ice";
	else if ele1 == "fire"
		currentEle = "lightning";
	else if ele1 == "earth"
		currentEle = 0;
}
else if ele0 == "water"
{
	if ele1 == "water" || ele1 == 0
		currentEle = "water";
	else if ele1 == "air"
		currentEle = "ice";
	else if ele1 == "fire"
		currentEle = 0;
	else if ele1 == "earth"
		currentEle = "plant";
}
else if ele0 == "fire"
{
	if ele1 == "fire" || ele1 == 0
		currentEle = "fire";
	else if ele1 == "air"
		currentEle = "lightning";
	else if ele1 == "water"
		currentEle = 0;
	else if ele1 == "earth"
		currentEle = "lava";	
}
else if ele0 == "earth"
{
	
}


switch currentEle{
	case "air":
		fastAttackObj = obj_air;
		slowAttackObj = obj_air_wall;
		break;
	case "water":
		fastAttackObj = obj_air;
		slowAttackObj = obj_ice;
		break;
	case "ice":
		fastAttackObj = obj_air;
		slowAttackObj = obj_ice;
		break;
	case "lightning":
		fastAttackObj = obj_lightning;
		slowAttackObj = obj_lightning;
		break;
	default:
		currentEle = 0;
		fastAttackObj = 0;
		slowAttackObj = 0;
		break;
}