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