/// @description 
efeitoTransicao = false;
objPlayer.x = posicaoX;
objPlayer.y = posicaoY;

if(room == BatalhaVilaVerde){
	with(objPlayer){
		sprite_index = sprPlayerDireita;
		image_index = 1;
		image_speed = 0;
		alarm[0] = 5;
	}
	if(global.inimigos != 0){
		global.inimigoBatalha = ds_list_create();
		global.playerBatalha = ds_list_create();
		
		var numero = array_length_1d(global.inimigos) -1; 
		var repete = irandom_range(1, global.qtdInimigos);		
		for(var i = 0; i < repete + 1; i++ ){
			var selecionaInimigo = irandom(numero);
			show_debug_message(i);
			if(i == 1){
				var inimigo = instance_create_layer(room_width - 130, 100 + (i * 100), "Inimigos", global.inimigos[selecionaInimigo]);
			}else{
				var inimigo = instance_create_layer(room_width - 100, 100 + (i * 100), "Inimigos", global.inimigos[selecionaInimigo]);
			}
			
			inimigo.alarm[0] = 5 + (i * 2); 
			inimigo.numeroInimigos = i;
		}		
	}	
}else if(direcao != 0){
	ds_list_destroy(global.inimigoBatalha);
	ds_list_destroy(global.playerBatalha);	
	objPlayer.sprite_index = direcao;
	objGameController.ControleSom();
	objBatalhaController.posicao = 0;
}