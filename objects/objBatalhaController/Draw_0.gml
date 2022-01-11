/// @description Menu Batalha
if(room == BatalhaVilaVerde){
	draw_rectangle_color(0 ,room_height, room_width, room_height -60, c_teal, c_teal, c_teal, c_teal, false);
	draw_rectangle_color(0 ,room_height, room_width, room_height -60, c_black, c_black, c_black, c_black,true);
	
	var numeroItensLista = ds_list_size(global.inimigoBatalha) -1;
	
	if(keyboard_check_pressed(vk_up)){posicao--;}
	if(keyboard_check_pressed(vk_down)){posicao++;}	
	
	if(posicao < 0){posicao = numeroItensLista;}
	if(posicao > numeroItensLista){posicao = 0;}
	
	var posy = 0;
	if(posicao == 0){
		posy = (objGoblin.posicaoYinimigo); 
	} else if(posicao == 1){
		posy = (objGoblin.posicaoYinimigo) * 2; 		
	}else{
		posy = (objGoblin.posicaoYinimigo) * 3;
	}
	
	//draw_circle_color(objGoblin.x - 50, posy - 20, 20, c_red, c_maroon, false);
	draw_sprite(sprLuva, 1, objGoblin.x - 50, posy - 20);
}