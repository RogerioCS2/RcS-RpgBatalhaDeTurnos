if(!instance_exists(objPlayer)){
	instance_create_layer(x, y, layer, objPlayer);
}
if(!instance_exists(objBatalhaController)){
	instance_create_layer(x, y, layer, objBatalhaController);
}
objGameController.ControleSom();

global.inimigos = [objGoblin, objOrck];
global.qtdInimigos = 2;