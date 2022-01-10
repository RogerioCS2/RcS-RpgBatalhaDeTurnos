/// @description Elemento de Interface
draw_self();

if(room == BatalhaVilaVerde){
	vida = (hp / maxHP) * 100;
	energia = (energia / maxEnergia) * 100;
	var xx = x-sprite_xoffset; 
	var yy = y-sprite_yoffset; 
	draw_healthbar(xx - 20, yy - 5, xx + sprite_width + 20, yy - 15, vida, c_dkgray, c_orange, c_green, 0, true, true);
	draw_healthbar(xx - 20, y + 5, xx + sprite_width + 20, y + 15, energia, c_dkgray, c_blue, c_aqua, 0, true, true);
}