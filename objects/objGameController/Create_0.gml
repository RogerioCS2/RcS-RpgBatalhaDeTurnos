/// @description Funções e Variaveis

function ControleSom(){
	if(room == BatalhaVilaVerde){
		//audio_stop_sound(sndMusicaGeral);
		audio_play_sound(sndMusicaBatalha, 11, true);
	}else{
		audio_stop_sound(sndMusicaBatalha);
		//audio_play_sound(sndMusicaGeral, 11, true);	
	}
}




