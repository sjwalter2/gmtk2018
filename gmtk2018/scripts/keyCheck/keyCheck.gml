var key = argument0
var down = argument1
if(is_string(key) && down)
{	
	if(keyboard_check(ord(key)))	
		return 1	
	else
		return 0
}
else if(!is_string(key) && down)
{	
	if(keyboard_check(key))	
		return 1	
	else
		return 0
}
else if(is_string(key) && !down)
{	
	if(keyboard_check_released(ord(key)))	
		return 1	
	else
		return 0
}
else if(!is_string(key) && !down)
{	
	if(keyboard_check_released(key))	
		return 1	
	else
		return 0
}
