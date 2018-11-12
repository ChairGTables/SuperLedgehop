if (1 == 1)
{
    global.isCutscene = false;
    room_speed = 30;
    if (instance_exists(obj_yuutorock))
    {
        obj_yuutorock.visible = 1;
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
    if (instance_exists(obj_mooseentrance))
    {
        instance_destroy(obj_mooseentrance);
    }
    if (instance_exists(obj_kamurodialogue1))
    {
        instance_destroy(obj_kamurodialogue1);
    }
    if (instance_exists(obj_kamurodialogue2))
    {
        instance_destroy(obj_kamurodialogue2);
    }
    script_execute(scr_stopmusic);
    if (!audio_is_playing(snd_yuutotheme))
    {
        global.musicrm1 = audio_play_sound_on (global.musicEmitter, snd_yuutotheme, true, 10);
    }
    instance_create(x, y, obj_blackfadein);
    instance_create(x, y, obj_skippingcutscene);
    instance_destroy(self);
}
