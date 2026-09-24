caindo();


/*
if (!caindo)
{
    var _player = instance_place(x, y, obj_player);

    if (_player != noone)
    {
        //if (_player.vspeed > 0 && _player.bbox_bottom <= bbox_top + 8)
        //{
            //caindo = true;
        //}
        if (_player.vspeed >= 0)
        {
            caindo = true;
        }
    }
}

if (caindo)
{
    y += vel_caindo;
    vel_caindo += 0.2;
}