/// @description 
draw_self();

if(room == BatalhaVilaVerde){
	var xx = x-sprite_xoffset; 
	var yy = y-sprite_yoffset; 
	draw_healthbar(xx - 20, yy - 5, xx + sprite_width + 20, yy - 15, (hp / maxHP) * 100, c_dkgray, c_orange, c_green, 0, true, true);
}