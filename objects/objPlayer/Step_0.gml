/// @description Update

depth = -y;

var cima = keyboard_check(vk_up);
var baixo = keyboard_check(vk_down);
var frente = keyboard_check(vk_right);
var traz = keyboard_check(vk_left);

velh = (frente - traz) * vel;
velv = (baixo - cima) * vel;

if(place_meeting(x + velh, y, objColisor)){
	while(!place_meeting(x + sign(velh), y, objColisor)){
		x += sign(velh);				
	}
	velh = 0;
}

if(place_meeting(x , y + velv, objColisor)){
	while(!place_meeting(x, y + sign(velv), objColisor)){
		y += sign(velv);				
	}
	velv = 0;
}

x += velh;
y += velv;

image_speed = 1.5;
if(velh == 0 && velv == 0){
	image_speed = 0;
	image_index = 1;
}

if(velh > 0 ){
	sprite_index = sprPlayerDireita;
} else if(velh < 0){
	sprite_index = sprPlayerEsquerda;
} else if(velv > 0){
	sprite_index = sprPlayerBaixo;
} else if(velv < 0){
	sprite_index = sprPlayerCima;
}
	

