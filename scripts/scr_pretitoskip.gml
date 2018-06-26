if (state < 8)
{
    global.isCutscene = false;
    state = 8;
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
    if (instance_exists(obj_titodialogue1))
    {
        instance_destroy(obj_titodialogue1);
    }
    if (instance_exists(obj_titodialogue2))
    {
        instance_destroy(obj_titodialogue2);
    }
    if (instance_exists(obj_titodialogue3))
    {
        instance_destroy(obj_titodialogue3);
    }
    if (instance_exists(obj_titodialogue4))
    {
        instance_destroy(obj_titodialogue4);
    }
    if (global.shineget == 0)
    {
        instance_create(x, y, obj_shinemessage);
    }
    script_execute(scr_stopmusic);
    global.musicrm1 = audio_play_sound_on (global.musicEmitter, snd_testtrack_david, true, 10);
    instance_create(x, y, obj_blackfadein);
    instance_create(x, y, obj_skippingcutscene);
    global.shineget = 1;
    global.chizuruhp = 100;
    global.chizurump = 100;
    instance_destroy(self);
}
