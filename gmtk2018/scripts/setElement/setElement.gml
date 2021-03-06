/// @description setElement(str newElement)

ele1 = ele0;
ele0 = argument[0];
switch ele0{
	case "air":
		switch ele1{
			case "air":
				currentEle = "air";
				break;
			case "water":
				currentEle = "ice";
				break;
			case "fire":
				currentEle = "lightning";
				break;
			case "earth":
				currentEle = "sand";
				break;
			default:
				currentEle = "air";
				break;
		}
		break;
	case "water":
		switch ele1{
			case "water":
				currentEle = "water";
				break;
			case "air":
				currentEle = "ice";
				break;
			case "earth":
				currentEle = "plant";
				break;
			case "fire":
				currentEle = "steam";
				break;
			default:
				currentEle = "water";
				break;
		}
		break;
	case "fire":
		switch ele1{
			case "fire":
				currentEle = "fire";
				break;
			case "air":
				currentEle = "lightning";
				break;
			case "earth":
				currentEle = "lava";
				break;
			case "water":
				currentEle = "steam";
				break;
			default:
				currentEle = "fire";
				break;
		}
		break;
	case "earth":
		switch ele1{
			case "earth":
				currentEle = "earth";
				break;
			case "water":
				currentEle = "plant";
				break;
			case "fire":
				currentEle = "lava";
				break;
			case "air":
				currentEle = "sand";
				break;
			default:
				currentEle = "earth";
		}
		break;
	default:
		ele0 = 0;
		ele1 = 0;
		currentEle = 0;
		break;
}

switch currentEle{
	case "air":
		fastAttackObj = obj_air;
		slowAttackObj = obj_air_wall;
		break;
	case "water":
		fastAttackObj = obj_fishHook;
		slowAttackObj = obj_geyser;
		break;
	case "ice":
		fastAttackObj = obj_icicle;
		slowAttackObj = obj_ice;
		break;
	case "lightning":
		fastAttackObj = obj_lightning;
		slowAttackObj = obj_lightBall;
		break;
	case "fire":
		fastAttackObj = 0;
		slowAttackObj = 0;
		//we use melee for fire
		break;
	case "earth":
		fastAttackObj = obj_earthBlock;
		slowAttackObj = obj_earthTriangle;
		break;
	case "plant":
		slowAttackObj = obj_vineExtend;
		fastAttackObj = obj_bouncing_plant;
		break;
	case "lava":
		fastAttackObj = obj_lavaBlast;
		slowAttackObj = obj_lavaVolcano;
		break;
	case "sand":
		fastAttackObj = obj_sandTornado;
		slowAttackObj = obj_sandPortal;
		break;
	case "steam":
		fastAttackObj = obj_steamblast;
		slowAttackObj = obj_steambomb;
		break;
	default:
		currentEle = 0;
		fastAttackObj = 0;
		slowAttackObj = 0;
		break;
}