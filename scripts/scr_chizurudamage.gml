if (instance_exists(obj_chizuru))
{
    if (global.invincibility == 0 && absorbed == 0 && obj_chizuru.spinning == 0)
    {
        audio_play_sound_on (global.voiceEmitter, snd_chizuruoof, false, 10); 
        audio_play_sound_on (global.effectsEmitter, snd_playerhit, false, 10); 
        if (instance_exists(obj_camera_chair))
        {
            obj_camera_chair.intensity = 10;
        }
        if (instance_exists(obj_controller))
        {
            obj_controller.hudintensity = 15;
        }
        global.chizuruhp -= damage;
        global.invincibility = 100;
        
        if (global.combo > 0)
        {
            global.combo = -1;
        }
        else
        {
            global.combo = 0;
        }
        

        if (instance_exists(obj_controller))
        {
            obj_controller.alarm[0] = 1;
        }
        
        if (hspeed > 0)
        {
            obj_chizuru.rightmomentum = knockbackspeed;
        }
        if (hspeed < 0)
        {
            obj_chizuru.leftmomentum = knockbackspeed;
        }
        if (vspeed > 0)
        {
            obj_chizuru.downmomentum = knockbackspeed;
        }
        if (vspeed < 0)
        {
            obj_chizuru.upmomentum = knockbackspeed;
        }
    
        obj_chizuru.knockbackLook = obj_chizuru.lookDirection;
        if (global.misc1 == 0)
        {
            obj_chizuru.sprite_index = spr_chizuruhurtd;
        }
        else
        {
            obj_chizuru.sprite_index = spr_yuutohurt;
        }
        
        obj_chizuru.image_index = 0;
        obj_chizuru.image_speed = 1;
        if (destroyable == 1)
        {
            instance_destroy(self);
        }
        
    }
}

