if (state < 2)
{
    script_execute(scr_musicfadekill);
    
    global.isCutscene = false;
    state = 2;
    room_speed = 30;
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
    if (instance_exists(obj_mooseentrance))
    {
        instance_destroy(obj_mooseentrance);
    }
    if (instance_exists(obj_billdialogue5))
    {
        instance_destroy(obj_billdialogue5);
    }
    if (instance_exists(obj_kamurodialogue8))
    {
        instance_destroy(obj_kamurodialogue8);
    }
    if (instance_exists(obj_lizdialogue1))
    {
        instance_destroy(obj_lizdialogue1);
    }
    if (instance_exists(obj_sauldialogue6))
    {
        instance_destroy(obj_sauldialogue6);
    }
    if (instance_exists(obj_sauldialogue7))
    {
        instance_destroy(obj_sauldialogue7);
    }
    script_execute(scr_stopmusic);
    global.musicrm1 = audio_play_sound_on (global.musicEmitter, snd_finalloop, true, 10);
    instance_create(x, y, obj_blackfadein);
    instance_create(x, y, obj_saul);
    if (global.bossvirgin == 1)
    {
        instance_create(x, y, obj_skippingcutscene);
    }
    instance_destroy(self);
}
