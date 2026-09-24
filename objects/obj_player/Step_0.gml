botoes();
movimento();
checa_chao();

//Pontos
var _pontos = -round(y / 10);

if (global.pontos < _pontos)
{
    global.pontos = _pontos
}

/*
if (vspeed < 0)
{
    global.pontos += 0.1;
}
*/
//Câmera

var _cam_h = camera_get_view_height(camera);
var _cam_y = camera_get_view_y(camera);

//Posição que o player precisa alcançar para mover a câmera
var _limite = _cam_y + margem;

//Player chegou perto do topo
if (y < _limite)
{
    _cam_y = y - margem;
}

//Câmera não pode voltar
if (_cam_y < cam_y)
{
    cam_y = _cam_y;
}

//Coloca a câmera na posição
camera_set_view_pos(camera, 0, cam_y);


//Mantendo o personagem dentro da largura da room
x = clamp(x, 0, room_width);


//Pulo automático

if (chao)
{
    tempo += 0.7;
    
    //Fazendo um delay para a folha conseguir cair
    if (tempo >= 1)
    {
        //Som do pulo
        var _gain = random_range(0.1, 0.5);
        var _pitch = random_range(0.1, 0.5);
        audio_play_sound(snd_pulo, 1, 0, _gain, , _pitch);
        
        //Criando o peido
        instance_create_depth(x, y - 10, +1, obj_peido);
        
        //Pulando
        vspeed = pulo;
        tempo = 0;
    }
    
}


//Reiniciando

if (y > camera_get_view_y(view_camera[0]) + 380)
{
    game_restart();
}

if (keyboard_check_pressed(ord("R")))
{
    room_restart();
}

/*
if (keyboard_check(vk_up))
{
    vspeed = pulo;
}
 */