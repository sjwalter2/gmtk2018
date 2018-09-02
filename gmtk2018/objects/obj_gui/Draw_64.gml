/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_set_alpha(.5)
draw_rectangle(0,0,room_width,50,0)
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_white)
draw_set_font(font0)
for (var i =0 ; i < global.playerCounter; i++)
{
	draw_text(20 + 400 * i, 10,"Player "+string(i+1))
	var stocks = 0;
	var element1 = 0;
	var element2 = 0;
	with(obj_player)
	{
		if(i = playerNumber)
		{
		stocks= stock;	
		element1 = ele0;
		element2 = ele1;
		}
	}
	draw_text(150 + 400 * i, 10,"Stock: "+string(stocks))
	if(element1 != 0)
		draw_sprite_ext(asset_get_index("spr_" + element1 +"_pickup"),0, 280 + 400 * i, 10,.5,.5,0,c_white,1)
	if(element2 != 0 && element2 != element1)
		draw_sprite_ext(asset_get_index("spr_" + element2 +"_pickup"),0, 320 + 400 * i, 10,.5,.5,0,c_white,1)
	
}

var play = 0

if(instance_number(obj_player) < 2)
{
	with(obj_player)
{

	play = id;
	
}
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(font1)
	var num = play.playerNumber
	draw_set_color(play.image_blend)
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"PLAYER "+ string(num+1) + " WINS!");
	draw_set_color(c_white)

}