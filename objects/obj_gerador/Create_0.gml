y_inicial = room_height - 150;

gerando = function()
{
    var _cam_y = camera_get_view_y(view_camera[0]);
    
    if (y_inicial >= _cam_y)
    {
        //Definido o X
        var _x = random_range(32, 128);
        
        //Gerando as plataformas
        var _escolha = choose(obj_plataforma_tronco, obj_plataforma_folha, obj_plataforma_movel)
        var _plataforma = instance_create_layer(_x, y_inicial, layer, _escolha);
        
        
        
        
        //Movendo
        //y_inicial -= random_range(80, 100);
        y_inicial -= random_range(100, 110);
        
        
    }
    
    
} 