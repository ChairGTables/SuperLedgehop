if (state >= 0 && state < 10)
{
    global.voiceVolume = global.volumeHold;
    audio_emitter_gain(global.voiceEmitter, global.voiceVolume);
    scr_stopmusic();
    global.musicrm1 = audio_play_sound_on (global.musicEmitter, snd_stage3b, true, 10); // Music in rm1, priority 10, looping
    global.isCutscene = false;
    room_speed = 30;
    instance_create(x, y, obj_blackfadein);
    skipped = true;
    
    if (instance_exists(obj_chizuru))
    {
        obj_chizuru.visible = 1;
        obj_chizuru.image_alpha = 1;
    }
    
    if (instance_exists(obj_titoassist))
    {
        obj_titoassist.visible = 1;
        obj_titoassist.image_alpha = 1;
    }
    
    if (instance_exists(obj_playerrock))
    {
        obj_playerrock.visible = 1;
        obj_playerrock.image_alpha = 1;
    }
    
    if (instance_exists(obj_antagonisttalk))
    {
        instance_destroy(obj_antagonisttalk);
    }
    if (instance_exists(obj_protagonisttalk))
    {
        instance_destroy(obj_protagonisttalk);
    }
    if (instance_exists(obj_dialogue))
    {
        instance_destroy(obj_dialogue);
    }
    if (instance_exists(obj_antagonisttalk))
    {
        instance_destroy(obj_antagonisttalk);
    }
    if (instance_exists(obj_poilicenpc2))
    {
        instance_destroy(obj_poilicenpc2);
    }
    if (instance_exists(obj_policesurround))
    {
        instance_destroy(obj_policesurround);
    }
    if (instance_exists(obj_saulnpc1))
    {
        instance_destroy(obj_saulnpc1);
    }
    if (instance_exists(obj_saulnpc2))
    {
        instance_destroy(obj_saulnpc2);
    }
    if (instance_exists(obj_saulnpc3))
    {
        instance_destroy(obj_saulnpc3);
    }
    if (instance_exists(obj_liznpc5))
    {
        instance_destroy(obj_liznpc5);
    }
    if (instance_exists(obj_crossettenpc2))
    {
        instance_destroy(obj_crossettenpc2);
    }
    if (instance_exists(obj_yuutonpc4))
    {
        instance_destroy(obj_yuutonpc4);
    }
    if (instance_exists(obj_titonpc6))
    {
        instance_destroy(obj_titonpc6);
    }
    if (instance_exists(obj_yuutonpc3))
    {
        instance_destroy(obj_yuutonpc3);
    }
    if (instance_exists(obj_titonpc5))
    {
        instance_destroy(obj_titonpc5);
    }
    if (instance_exists(obj_lizflashbang))
    {
        instance_destroy(obj_lizflashbang);
    }
    if (instance_exists(obj_buildingholefront))
    {
        instance_destroy(obj_buildingholefront);
    }
    if (instance_exists(obj_buildingholeback))
    {
        instance_destroy(obj_buildingholeback);
    }
    if (instance_exists(obj_lizexplosion))
    {
        instance_destroy(obj_lizexplosion);
    }
    if (instance_exists(obj_lizpineapple))
    {
        instance_destroy(obj_lizpineapple);
    }
    if (instance_exists(obj_ruffiannpc1))
    {
        instance_destroy(obj_ruffiannpc1);
    }
    if (instance_exists(obj_lizdialogue8))
    {
        instance_destroy(obj_lizdialogue8);
    }
    if (instance_exists(obj_lizdialogue9))
    {
        instance_destroy(obj_lizdialogue9);
    }
    if (instance_exists(obj_lizdialogue10))
    {
        instance_destroy(obj_lizdialogue10);
    }
    if (instance_exists(obj_sauldialogue1))
    {
        instance_destroy(obj_sauldialogue1);
    }
    if (instance_exists(obj_sauldialogue2))
    {
        instance_destroy(obj_sauldialogue2);
    }
    if (instance_exists(obj_sauldialogue3))
    {
        instance_destroy(obj_sauldialogue3);
    }
    if (instance_exists(obj_sauldialogue4))
    {
        instance_destroy(obj_sauldialogue4);
    }
    if (instance_exists(obj_sauldialogue5))
    {
        instance_destroy(obj_sauldialogue5);
    }
    if (instance_exists(obj_sauldialogue6))
    {
        instance_destroy(obj_sauldialogue6);
    }
    if (instance_exists(obj_sauldialogue7))
    {
        instance_destroy(obj_sauldialogue7);
    }
    if (instance_exists(obj_sauldialogue8))
    {
        instance_destroy(obj_sauldialogue8);
    }
    if (instance_exists(obj_sauldialogue9))
    {
        instance_destroy(obj_sauldialogue9);
    }
    if (instance_exists(obj_sauldialogue10))
    {
        instance_destroy(obj_sauldialogue10);
    }
    
    instance_destroy(self);
}
