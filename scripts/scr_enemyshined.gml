multiplier = 15;

if (global.chizurumovex < 0)
{
    leftmomentum = -global.chizurumovex * multiplier;
    rightmomentum = 0;
}
if (global.chizurumovex > 0)
{
    rightmomentum = global.chizurumovex * multiplier;
}

if (global.chizurumovey < 0)
{
    upmomentum = -global.chizurumovey * multiplier;
    downmomentum = 0;
}
if (global.chizurumovey > 0)
{
    downmomentum = global.chizurumovey * multiplier;
    upmomentum = 0;
}

if (global.chizurumovex == 0 && global.chizurumovey == 0)
{
    if (instance_exists(obj_chizuru))
    {
        if (obj_chizuru.lookDirection == 1)
        {
            downmomentum = 15;
            leftmomentum = 15;
        }
        if (obj_chizuru.lookDirection == 2)
        {
            downmomentum = 15;
        }
        if (obj_chizuru.lookDirection == 3)
        {
            downmomentum = 15;
            rightmomentum = 15;
        }
        if (obj_chizuru.lookDirection == 4)
        {
            leftmomentum = 15;
        }
        if (obj_chizuru.lookDirection == 6)
        {
            rightmomentum = 15;
        }
        if (obj_chizuru.lookDirection == 7)
        {
            upmomentum = 15;
            leftmomentum = 15;
        }
        if (obj_chizuru.lookDirection == 8)
        {
            upmomentum = 15;
        }
        if (obj_chizuru.lookDirection == 9)
        {
            upmomentum = 15;
            rightmomentum = 15;
        }
    }
}

for (i = 0; i < 9; i++)
{
    capsule = instance_create(x, y, obj_absorbparticle);
    capsule.category = equip;
}

