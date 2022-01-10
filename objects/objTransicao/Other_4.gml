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
	
	instance_create_layer(room_width - 100, 100, "Inimigos", objGoblin);
}else if(direcao != 0){
	objPlayer.sprite_index = direcao;
	objGameController.ControleSom();
}