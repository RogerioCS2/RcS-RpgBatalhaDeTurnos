// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ControlePlayer(lista){
	var listaPlayer = ds_list_size(lista) -1;
	
	if(keyboard_check_pressed(vk_up)){posicaoDoPlayer--;}
	if(keyboard_check_pressed(vk_down)){posicaoDoPlayer++;}	
	
	if(posicaoDoPlayer < 0){posicaoDoPlayer = listaPlayer;}
	if(posicaoDoPlayer > listaPlayer){posicaoDoPlayer = 0;}	
		
	draw_sprite(sprLuva, 1,room_width - 450, 90 +(posicaoDoPlayer * 100));	
}

function ControleMenu(){
	draw_text_color(100, room_height - 35, "Atacar", c_white, c_white, c_white, c_white, 1);
	draw_text_color(250, room_height - 35, "Defender", c_white, c_white, c_white, c_white, 1);
	draw_text_color(400, room_height - 35, "Correr", c_white, c_white, c_white, c_white, 1);
	
	if(keyboard_check_pressed(vk_left)){posicao--;}
	if(keyboard_check_pressed(vk_right)){posicao++;}	
	
	if(posicao < 0){posicao = 2;}
	if(posicao > 2){posicao = 0;}	
		
	draw_sprite(sprLuva, 1, 80 + (posicao * 150), room_height - 20);
}

function ControleInimigos(lista){
	var listaInimigos = ds_list_size(lista) -1;
			
	if(keyboard_check_pressed(vk_up)){posicaoDoInimigo--;}
	if(keyboard_check_pressed(vk_down)){posicaoDoInimigo++;}
			
	if(posicaoDoInimigo < 0){posicaoDoInimigo = listaInimigos;}
	if(posicaoDoInimigo > listaInimigos){posicaoDoInimigo = 0;}
			
	draw_sprite(sprLuva, 1,room_width - 150, 90 +(posicaoDoInimigo * 100));
}