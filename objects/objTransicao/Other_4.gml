/// @description 
efeitoTransicao = false;
objPlayer.x = posicaoX;
objPlayer.y = posicaoY;

if(room == BatalhaVilaVerde){
	with(objPlayer){
		sprite_index = sprPlayerDireita;
		image_index = 1;
		image_speed = 0;
	}	
}