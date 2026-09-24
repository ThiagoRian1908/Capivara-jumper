//Tocando a música
audio_stop_all();
audio_play_sound(snd_musica, 0, 1);

//Alarme
tempo = 0;

//Pontos
global.pontos = 0;

//Física
gravity = 0.2;
pulo = -7;
vel_lateral = 1.1;
colisoes = [obj_parede_one_way, obj_terra];

//Botões
right = 0;
left = 0;

//Câmera
camera = view_camera[0];
cam_y = 0;

//Margem do topo
margem = 100;

//Usando os botões
botoes = function()
{
    right = keyboard_check(vk_right);
    left = keyboard_check(vk_left);
}


//Fazendo a movimentação para os lados
movimento = function()
{
    if (right)
    {
        x += vel_lateral;
    }
    else if (left)
    {
        x -= vel_lateral;
    }
}


//Se encostei no chão
checa_chao = function()
{
    chao = false;

    if (vspeed >= 0)
    {
        chao = place_meeting(x, y + 1, obj_parede_one_way);
    }
}
