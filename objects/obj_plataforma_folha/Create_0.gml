vel_caindo = 2;
caindo = false;

//Chance de nascer um açaí
var _chance = random_range(1, 100);
var _chance_acai = random_range(0, 2);
    
if (_chance <= 60)
{
    var _acai = instance_create_layer(x, y - 10, "Player", obj_acai);
    
    _acai.image_index = _chance_acai;
}





//vel_caindo = 1;

caindo = function()
{
    /*
    if (place_meeting(x, y, obj_player))
    {
        //show_message("Oi");
        if (obj_player.vspeed > 0 && obj_player.bbox_bottom <= bbox_top + 5)
        {
            //show_message("Tchau");
            vspeed = vel_caindo;
            
        }
        
    }
     */
    if (obj_player.vspeed > 0)
    {
        if (instance_place(x, y, obj_player))
        {
            vspeed = vel_caindo;
        }
        
    }
}