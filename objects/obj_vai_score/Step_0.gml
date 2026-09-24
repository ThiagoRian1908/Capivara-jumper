//Checando o botão esquerdo do mouse
var _mouse_click = mouse_check_button_pressed(mb_left);

//Checando se o mouse está em cima do botão
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);

//Se o mouse está no botão
if (_mouse_sobre)
{
    //Mudando a escala X
    tween(id, "image_xscale", escala_x * escala_sobre, tween_animation.bounce, 30);
    
    //Mudando a escala Y
    tween(id, "image_yscale", escala_y * escala_sobre, tween_animation.bounce, 30);
    
    
    if (_mouse_click)
    {
        //Mudando a escala X
        tween(id, "image_xscale", escala_x * 2, tween_animation.back, 10);
        
        //Mudando a escala Y
        tween(id, "image_yscale", escala_y * 2, tween_animation.back, 10);
        
        
    }
}
else //Se o mouse não está no botão
{
    //Voltando a escala X ao normal
    tween(id, "image_xscale", escala_x, tween_animation.bounce, 30);
    
    //Voltando a escala Y ao normal
    tween(id, "image_yscale", escala_y, tween_animation.bounce, 30);
}