if (other.absorb == 0 && friendly == 0 && absorbed == 0)
{
    friendly = 1;
    global.totalReflected += 1;
    audio_stop_sound(snd_reflect);
    audio_play_sound_on (global.effectsEmitter, snd_reflect, false, 10); 
    if (speed != 0)
    {
        var darkside = instance_create(x, y, obj_chizuruenhancedbullet);
        darkside.direction = direction + 180;
        darkside.speed = speed * 3;
        darkside.sprite_index = sprite_index;
        darkside.damage = round(damage / 3);
        darkside.timed = 1;
        darkside.image_xscale = image_xscale;
        darkside.image_yscale = image_yscale;
    }


    
    instance_destroy(self);
}
