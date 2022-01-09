/// @description Update

if(place_meeting(x, y, objPlayer) && ativo){
	var transferindo = instance_create_layer(x, y, layer, objTransicao);
	transferindo.destino = destino;
	transferindo.posicaoX = posicaoX;
	transferindo.posicaoY = posicaoY;
	ativo = false;	
}
