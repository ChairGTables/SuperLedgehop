if (obj_titlecamera.action == 0)
{
    audio_stop_sound(snd_titlemusic);
    
    randThing = random_range(0,200);
    
    if (randThing < 75)
    {
        audio_play_sound_on(global.voiceEmitter, snd_iwillcheeseyouup, false, 0);
    }
    else if (randThing > 74 && randThing < 125)
    {
        audio_play_sound_on(global.voiceEmitter, snd_cheeseitup, false, 0);
    }
    else
    {
        audio_play_sound_on(global.voiceEmitter, snd_imgoingallin, false, 0);
    }
    
    
    if (instance_exists(obj_titlecamera))
    {
        obj_titlecamera.action = 1;
    }
}
