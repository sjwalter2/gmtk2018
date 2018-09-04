/// @description Insert description here
// You can write your code in this editor
draw_set_color(color)
draw_set_alpha(random_range(.2,.3))
for(var i = 0; i > -10;i--)
{
if(alarm_get(0) != -1)
	draw_circle(x,y,i*15 * alarm_get(0)/30 ,0)
else
	draw_circle(x,y,i*15 ,0)
}
draw_set_alpha(1)
draw_self()