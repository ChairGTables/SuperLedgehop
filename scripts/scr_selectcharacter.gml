selectedHomie = argument0;

if (global.misc1 != selectedHomie)
{
    
    audio_play_sound_on (global.effectsEmitter, snd_itemget, false, 10);
    global.misc1 = selectedHomie;
    if (selectedHomie == 0)
    {
        audio_play_sound_on (global.voiceEmitter, snd_chizurumortal, false, 10);
        if (instance_exists(obj_chizuruselect))
        {
            instance_create(obj_chizuruselect.x + 15, obj_chizuruselect.y + 15, obj_redcircle);
        }
        
    }
    else
    {
        audio_play_sound_on (global.voiceEmitter, snd_yuutoshow, false, 10);
        if (instance_exists(obj_yuutoselect))
        {
            instance_create(obj_yuutoselect.x + 15, obj_yuutoselect.y + 15, obj_redcircle);
        }
    }
}
