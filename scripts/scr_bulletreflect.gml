if (other.absorb == 0 && friendly == 0 && absorbed == 0)
{
    friendly = 1;
    audio_play_sound_on (global.effectsEmitter, snd_reflect, false, 10); 
    var darkside = instance_create(x, y, obj_chizuruenhancedbullet);
    darkside.direction = direction + 180;
    darkside.speed = speed * 3;
    darkside.sprite_index = sprite_index;
    
    instance_destroy(self);
}
