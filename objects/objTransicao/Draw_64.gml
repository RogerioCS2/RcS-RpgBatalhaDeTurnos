/// @description Efeito Transicao

if(efeitoTransicao){transparenciaTela += 0.25;}
if(transparenciaTela >= 1){room_goto(destino);}
if(!efeitoTransicao){transparenciaTela -= 0.25;}
if(transparenciaTela <= 0 && !efeitoTransicao){instance_destroy();}

draw_set_alpha(transparenciaTela);
draw_set_color(c_black);
draw_rectangle(0, 0, view_wport[0] * 2, view_wport[0] * 2, false);
draw_set_alpha(1);
draw_set_color(c_white);

