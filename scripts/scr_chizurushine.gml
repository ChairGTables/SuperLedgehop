if (instance_exists(obj_chizuru))
{
    if (global.chizurushinecharge > 5)
    {
        var shine = instance_create(obj_chizuru.x, obj_chizuru.y, obj_shine);
        shine.absorb = 1;
    }
    else
    {
        var shine = instance_create(obj_chizuru.x, obj_chizuru.y, obj_shine);
        shine.absorb = 0;
    }
    global.chizurushinecharge = 0;
}
