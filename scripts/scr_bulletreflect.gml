if (other.absorb == 0 && friendly == 0 && absorbed == 0)
{
    friendly = 1;
    audio_play_sound (snd_reflect, 10, false); 
    var darkside = instance_create(x, y, obj_chizuruenhancedbullet);
    darkside.direction = direction + 180;
    darkside.speed = speed * 3;
    darkside.sprite_index = sprite_index;
    
    instance_destroy(self);
}
