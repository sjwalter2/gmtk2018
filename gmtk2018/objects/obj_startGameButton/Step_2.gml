/// @description Insert description here
// You can write your code in this editor
var m1 = mouse_check_button(mb_left);
if(m1){
	if(position_meeting(mouse_x,mouse_y,id)){
		room_goto_next();
	}
}
