audio_stop_sound(hurtSoundOne);
audio_stop_sound(hurtSoundTwo);
audio_play_sound_on (global.voiceEmitter, deathSound, false, 10); 
instance_create(x, y, obj_explosion);

for (i = 0; i < random_range(minDrops,maxDrops); i++)
{
    if (random_range(0, 100) > 65)
    {
        instance_create(x, y, obj_hporb);
    }
    else
    {
        instance_create(x, y, obj_mporb);
    }

}

instance_destroy(self);
