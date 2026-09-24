//Checando o botão esquerdo do mouse
var _mouse_click = mouse_check_button_pressed(mb_left);

//Checando se o mouse está em cima do botão
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);

//Se o mouse está no botão
if (_mouse_sobre)
{
    //Mudando a escala do texto
    tween(id, "escala_texto", escala_sobre, tween_animation.bounce, 30);
    
    if (_mouse_click)
    {
        //Mudando a escala do texto
        tween(id, "escala_texto", 5, tween_animation.back, 10);
    }
}
else //Se o mouse não está no botão
{
    //Voltando a escala do texto ao normal
    tween(id, "escala_texto", 1, tween_animation.bounce, 30);
}

