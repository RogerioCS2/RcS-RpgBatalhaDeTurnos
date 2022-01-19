/// @description
if(room == BatalhaVilaVerde){
	if(energia < maxEnergia){
		energia += agi/5; 	
	}	
}
if(hp <= 0){
	instance_destroy();
}