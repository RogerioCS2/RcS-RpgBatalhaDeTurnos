/// @description Menu Batalha
if(room == BatalhaVilaVerde){
	var selecionar = keyboard_check_released(ord("X"));
	var cancelarSelecao = keyboard_check_released(ord("Z"));
	
	
	if(cancelarSelecao){momento--;}
	if(momento > 2 || momento< 0){momento = 0;}
		
	draw_rectangle_color(0 ,room_height, room_width, room_height -60, c_teal, c_teal, c_teal, c_teal, false);
	draw_rectangle_color(0 ,room_height, room_width, room_height -60, c_black, c_black, c_black, c_black,true);
	
	switch(momento){
		case 0:	
			playerPosicaoI = ds_list_find_value(global.playerBatalha, posicaoDoPlayer);			
			ControlePlayer(global.playerBatalha);			
			if(selecionar && playerPosicaoI.energia >= 99){
				momento++;				
			}
		break;
		case 1:
			ControleMenu();
			if(selecionar){				
				switch(posicao){
					case 0:
						if(playerPosicaoI.defendendo){
							playerPosicaoI.def /= 2;
							playerPosicaoI.defendendo = false;	
							playerPosicaoI.sprite_index = sprPlayerDireita;
						}
						momento++;
					break
					case 1:
						momento--
						playerPosicaoI.def *= 2;
						playerPosicaoI.defendendo = true;
						playerPosicaoI.energia = 0;
					break
					case 2:
						global.batalha = false;
					break
				}				
			}
			if(cancelarSelecao){momento--;}
		break;
		case 2:
			ControleInimigos(global.inimigoBatalha);
			if(selecionar){				
				playerPosicaoI.energia = 0;
				playerPosicaoI = 0;
				momento = 0;
				
				playerPosicaoI = ds_list_find_value(global.playerBatalha, posicaoDoPlayer);					
				inimigoPosicaoI =  ds_list_find_value(global.inimigoBatalha, posicaoDoInimigo);						
				inimigoPosicaoI.hp -= (playerPosicaoI.atq - inimigoPosicaoI.def);
				inimigoPosicaoI.dano = true;
				inimigoPosicaoI.alarm[1] = room_speed;
			}
			if(cancelarSelecao){momento--;}
		break;
	}	
}