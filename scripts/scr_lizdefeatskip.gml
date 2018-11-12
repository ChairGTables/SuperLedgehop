if (state > 0 && state < 14)
{
    room_speed = 30;
    state = 14;
    alarm[0] = 1;
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
    if (instance_exists(obj_lizdialogue2))
    {
        instance_destroy(obj_lizdialogue2);
    }
    if (instance_exists(obj_lizdialogue3))
    {
        instance_destroy(obj_lizdialogue3);
    }
    if (instance_exists(obj_lizdialogue4))
    {
        instance_destroy(obj_lizdialogue4);
    }
    if (instance_exists(obj_lizdialogue5))
    {
        instance_destroy(obj_lizdialogue5);
    }
    if (instance_exists(obj_lizdialogue6))
    {
        instance_destroy(obj_lizdialogue6);
    }
    if (instance_exists(obj_lizdialogue7))
    {
        instance_destroy(obj_lizdialogue7);
    }
    script_execute(scr_stopmusic);
    black = instance_create(x, y, obj_blackbackground);
    black.depth = -9000;
    instance_create(x, y, obj_blackfadein);
    instance_create(x, y, obj_skippingcutscene);
}
