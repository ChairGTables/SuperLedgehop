if (instance_exists(obj_yuutoassist))
{
    if (obj_yuutoassist.image_alpha == 1)
    {
        audio_play_sound_on (global.voiceEmitter, snd_yuutokyah, false, 10); 
        audio_play_sound_on (global.effectsEmitter, snd_playerhit, false, 10); 
        obj_yuutoassist.image_alpha = 0.5;
        obj_yuutoassist.sprite_index = spr_yuutohurt;
        obj_yuutoassist.alarm[10] = 90;
        obj_yuutoassist.alarm[9] = 6;
        global.assisthp -= 5;
        obj_yuutoassist.speed = speed;
        obj_yuutoassist.direction = direction;
        obj_yuutoassist.moving = 1;
        if (destroyable == 1)
        {
            instance_destroy(self);
        }
    }
}
