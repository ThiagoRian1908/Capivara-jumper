draw_self();
//Sombra
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_play);
draw_set_colour(c_black);

//Desenhando a sombra
//draw_text(meu_x + 2, meu_y + 2, "JOGAR");

draw_text_transformed(meu_x + 2, meu_y + 2, "JOGAR", escala_texto, escala_texto, image_angle);



//Definindo o da frente
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_play);
draw_set_colour(c_yellow);

//Desenhando
//draw_text(meu_x, meu_y, "JOGAR");

draw_text_transformed(meu_x, meu_y, "JOGAR", escala_texto, escala_texto, image_angle);


//Resetando
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
draw_set_colour(-1);