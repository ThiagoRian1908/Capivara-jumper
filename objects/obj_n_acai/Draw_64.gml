//Sombra
draw_set_halign(-1);
draw_set_valign(1);
draw_set_font(fnt_score);
draw_set_colour(c_black);

//Desenhando a sombra
draw_text(x + 7, y + 2, round(global.acai));


//Definindo o da frente
draw_set_halign(-1);
draw_set_valign(1);
draw_set_font(fnt_score);
draw_set_colour(c_purple);

//Desenhando
draw_text(x + 5, y, round(global.acai));


//Resetando
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
draw_set_colour(-1);