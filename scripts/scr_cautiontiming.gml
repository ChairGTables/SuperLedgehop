    global.isCutscene = false;
    if (instance_exists(obj_mooseentrance))
    {
        instance_create(obj_mooseentrance.x, obj_mooseentrance.y, obj_moose);
        instance_destroy(obj_mooseentrance);
    }
    if (instance_exists(obj_defaultnpc1))
    {
        instance_create(obj_defaultnpc1.x, obj_defaultnpc1.y, obj_default);
        instance_destroy(obj_defaultnpc1);
    }
    if (instance_exists(obj_titonpc2))
    {
        instance_create(obj_titonpc2.x, obj_titonpc2.y, obj_tito);
        instance_destroy(obj_titonpc2);
    }
    if (instance_exists(obj_liznpc1))
    {
        instance_create(obj_liznpc1.x, obj_liznpc1.y, obj_liz);
        instance_destroy(obj_liznpc1);
    }
    
    if (instance_exists(obj_yuutonpc1))
    {
        global.musicrm1 = audio_play_sound_on (global.musicEmitter, snd_yuutotheme, true, 10); 
        room_goto_next();
    }
    else if (instance_exists(obj_kamuronpc3))
    {
        instance_create(obj_kamuronpc3.x, obj_kamuronpc3.y, obj_kamuro);
        instance_destroy(obj_kamuronpc3); 
    }
    else if (instance_exists(obj_billnpc2))
    {
        global.musicrm1 = audio_play_sound_on (global.musicEmitter, snd_finalloop, true, 10); 
        instance_create(obj_billnpc2.x, obj_billnpc2.y, obj_bill);
        instance_destroy(obj_billnpc2);
        
    }
    else if (instance_exists(obj_saulnpc3))
    {
        if (!audio_is_playing(snd_chiefloop))
        {
            global.musicrm1 = audio_play_sound_on (global.musicEmitter, snd_chiefloop, true, 10);
        }
         
        instance_create(obj_saulnpc3.x, obj_saulnpc3.y, obj_saul);
        instance_destroy(obj_saulnpc3);
        
    }
    else
    {
        global.musicrm1 = audio_play_sound_on (global.musicEmitter, snd_bosstheme, true, 10); 
    }
    instance_destroy(self);
