if (global.max_score > global.pontos)
{
    global.max_score = global.max_score;
}
if (global.max_score <= global.pontos)
{
    global.max_score = global.pontos;
}

if (max_score < global.max_score - 0.5)
{
    audio_play_sound(snd_score, 1, 0);
}
/*else 
{
    audio_stop_all();
}
*/
//global.max_score = global.max_score