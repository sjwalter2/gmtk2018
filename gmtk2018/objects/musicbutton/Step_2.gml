/// @description Insert description here
// You can write your code in this editor
var m1 = mouse_check_button(mb_left);
if(m1 && pressed == 0){
	if(position_meeting(mouse_x,mouse_y,id)){
		pressed = 1;
		if(global.music){
			global.music = 0;
			sprite_index = spr_musicbuttonoff;
			audio_stop_all();
		} else {
			global.music = 1;
			sprite_index = spr_musicbutton;
			audio_play_sound(mus0,0,1);
		}
	}
}