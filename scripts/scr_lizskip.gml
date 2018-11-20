if (state < 2)
{
    global.isCutscene = false;
    script_execute(scr_musicfadekill);
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
    if (instance_exists(obj_kamurodialogue1))
    {
        instance_destroy(obj_kamurodialogue1);
    }
    if (instance_exists(obj_kamurodialogue2))
    {
        instance_destroy(obj_kamurodialogue2);
    }
    if (instance_exists(obj_lizdialogue1))
    {
        instance_destroy(obj_lizdialogue1);
    }
    script_execute(scr_stopmusic);
    global.musicrm1 = audio_play_sound_on (global.musicEmitter, snd_bosstheme, true, 10);
    instance_create(x, y, obj_blackfadein);
    instance_create(x, y, obj_liz);
    if (global.bossvirgin == 1)
    {
        instance_create(x, y, obj_skippingcutscene);
    }
    instance_destroy(self);
}
