

if (other.absorb == 1 && absorbed == 0)
{
    if (global.absorbing == 0)
    {
        instance_destroy(self);
    }
    else if (instance_number(obj_absorbbubble) < 100)
    {
    
    
        absorbed = 1;
        friendly = 1;
        
        alarm[0] = global.chizurupoptime;
        audio_play_sound_on (global.effectsEmitter, snd_absorb, false, 10); 
        instance_create(x, y, obj_absorbbubble);
        targetSpeed = 0;
        targerDirection = 0;    
        vspeed = 0;
        hspeed = 0;
    }
    else
    {
        instance_destroy(self);
    }
}
