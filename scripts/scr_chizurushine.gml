if (instance_exists(obj_chizuru))
{
    if (global.chizurushinecharge > 5)
    {
        audio_play_sound_on (global.effectsEmitter, snd_absorbing, false, 10); 
        var shine = instance_create(obj_chizuru.x, obj_chizuru.y, obj_shine);
        shine.absorb = 1;
    }
    else
    {
        var shine = instance_create(obj_chizuru.x, obj_chizuru.y, obj_shine);
        audio_play_sound_on (global.effectsEmitter, snd_reflector, false, 10); 
        shine.absorb = 0;
    }
    global.chizurushinecharge = 0;
    
    obj_chizuru.action = 0;
    obj_chizuru.waveshine = 1;
    obj_chizuru.spinning = 0;
    obj_chizuru.spinFinish = 0;
    
    obj_chizuru.alarm[8] = 2;
    
    obj_chizuru.alarm[10] = -1;
    
    obj_chizuru.hspeed *= 0.7;
    obj_chizuru.vspeed *= 0.7;
    
    if(obj_chizuru.lookDirection == 1)
    {
        obj_chizuru.image_xscale = -1;
        obj_chizuru.sprite_index = spr_chizuruwavedr;
    }
    
    if(obj_chizuru.lookDirection == 2)
    {
        obj_chizuru.sprite_index = spr_chizuruwaved;
    }
    
    if(obj_chizuru.lookDirection == 3)
    {
        obj_chizuru.image_xscale = 1;
        obj_chizuru.sprite_index = spr_chizuruwavedr;
        
    }
    
    if (obj_chizuru.lookDirection == 4)
    {
        obj_chizuru.image_xscale = -1;
        obj_chizuru.sprite_index = spr_chizuruwaver;
        
    }
    
    if (obj_chizuru.lookDirection == 6)
    {
        obj_chizuru.image_xscale = 1;
        obj_chizuru.sprite_index = spr_chizuruwaver;
        
    }
    
    if (obj_chizuru.lookDirection == 7)
    {
        obj_chizuru.image_xscale = -1;
        obj_chizuru.sprite_index = spr_chizuruwaver;
        
    }
    
    if (obj_chizuru.lookDirection == 8)
    {
        obj_chizuru.image_xscale = 1;
        obj_chizuru.sprite_index = spr_chizuruwaveu;
        
    }
    
    if (obj_chizuru.lookDirection == 9)
    {
        obj_chizuru.image_xscale = 1;
        obj_chizuru.sprite_index = spr_chizuruwaveur;
    }
}
