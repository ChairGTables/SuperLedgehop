if (instance_exists(obj_chizuru))
{
    if (obj_chizuru.spinning == 0)
    {
        obj_chizuru.spinning = 1;
        obj_chizuru.action = 0;
        obj_chizuru.waveshine = 0;
        
        obj_chizuru.hspeed = global.chizurumovex * 25;
        obj_chizuru.vspeed = global.chizurumovey * 25;
        
        obj_chizuru.alarm[10] = 30;
        obj_chizuru.alarm[8] = -1;
        obj_chizuru.alarm[9] = -1;
        
        obj_chizuru.sprite_index = spr_chizuruspin;
    }
    
}
