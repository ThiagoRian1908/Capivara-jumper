//Chance de nascer um açaí
var _chance = random_range(1, 100);
var _chance_acai = random_range(0, 2);
    
if (_chance <= 60)
{
    var _acai = instance_create_layer(x, y - 10, "Player", obj_acai);
    
    _acai.image_index = _chance_acai;
}
