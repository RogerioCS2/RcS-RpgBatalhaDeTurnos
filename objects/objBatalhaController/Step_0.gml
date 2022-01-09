/// @description Update

if(!global.batalha){	
	global.pontoAtual = irandom(global.intervaloBatalha);
	
	var iniciaBatalha = (global.pontoAtual == global.intervaloBatalha && global.intervaloBatalha < 800 && objPlayer.movendo);
	if(iniciaBatalha){
		
		roomDeOrigem = room;
		origemX = objPlayer.x;
		origemY = objPlayer.y;
		
		global.batalha = true;
		global.intervaloBatalha = 1000;
		var transicao = instance_create_layer(x, y, layer, objTransicao);
		transicao.destino = BatalhaVilaVerde;
		transicao.posicaoX = 100;
		transicao.posicaoY = 100;
	}		
}
if(room == BatalhaVilaVerde){
	if(global.batalha == false){
			var transicao = instance_create_layer(x, y, layer, objTransicao);
		transicao.destino = roomDeOrigem;
		transicao.posicaoX = origemX;
		transicao.posicaoY = origemY		
	}			
}
	