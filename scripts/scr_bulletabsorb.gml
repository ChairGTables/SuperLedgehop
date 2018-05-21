if (other.absorb == 1 && absorbed == 0 && global.absorbing == 1)
{
    if (instance_number(obj_absorbbubble) < 100)
    {
        absorbed = 1;
        friendly = 1;
        
        alarm[0] = global.chizurupoptime;
        audio_play_sound_on (global.effectsEmitter, snd_absorb, false, 10); 
        instance_create(x, y, obj_absorbbubble);
            
        vspeed = 0;
        hspeed = 0;
    }
    else
    {
        instance_destroy(self);
    }
}
