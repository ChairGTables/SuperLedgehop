if (1 == 1)
{
    global.isCutscene = false;
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
    if (instance_exists(obj_flame_sonii))
    {
        instance_destroy(obj_flame_sonii);
    }
    if (instance_exists(obj_kamuronpc2))
    {
        instance_destroy(obj_kamuronpc2);
    }
    instance_create(x, y, obj_blackfadein);
    instance_create(x, y, obj_skippingcutscene);
    instance_destroy(self);
}
