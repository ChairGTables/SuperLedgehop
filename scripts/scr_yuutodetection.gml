if (instance_exists(obj_yuutoassist))
{
    if (obj_yuutoassist.casting == 0)
    {
        obj_yuutoassist.casting = 1;
        obj_yuutoassist.targetX = other.x;
        obj_yuutoassist.targetY = other.y;
    }
}

if (instance_exists(obj_titoassist))
{
    if (obj_titoassist.casting == 0)
    {
        obj_titoassist.casting = 1;
        obj_titoassist.targetX = other.x;
        obj_titoassist.targetY = other.y;
    }
}
