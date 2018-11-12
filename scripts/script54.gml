if (state > 0 && state < 14)
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
    if (instance_exists(obj_poilicenpc2))
    {
        instance_destroy(obj_poilicenpc2);
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
    instance_create(x, y, obj_blackfadein);
    instance_destroy(self);
}
