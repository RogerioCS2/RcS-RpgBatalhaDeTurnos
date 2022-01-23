/// @description
if(room == BatalhaVilaVerde){
	if(energia < maxEnergia){
		energia += agi/5; 	
	}	
}
if(hp <= 0){
	instance_destroy();
}

if(dano){
	if(efeito){image_alpha -= 0.2;}
	if(!efeito){image_alpha += 0.2;}
	if(image_alpha <= 0){efeito = false;}
	if(image_alpha >= 1){efeito = true;}	
}