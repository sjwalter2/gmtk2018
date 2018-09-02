/// @description Insert description here
// You can write your code in this editor
var m1 = mouse_check_button(mb_left);
if(m1 && pressed == 0){
	if(position_meeting(mouse_x,mouse_y,id)){
		pressed = 1;
		if global.playerCounter < 4
			global.playerCounter += 1;
	}
}