draw_self();
//Sombra
/*
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_play);
draw_set_colour(c_black);

//Desenhando a sombra
draw_text(meu_x + 2, meu_y + 2, string(global.max_score));
*/

//Definindo o da frente
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_play);
draw_set_colour(c_black);

//Indo do zero até o número certo
max_score = lerp(max_score, global.max_score, 0.1);

//Desenhando
draw_text(meu_x, meu_y,"Recorde: " + string(round(max_score)));
//draw_text(meu_x, meu_y,"Recorde: " + string(round(global.max_score)));


//Resetando
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
draw_set_colour(-1);