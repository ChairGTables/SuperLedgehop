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

for (i = 0; i < 9; i++)
{
    capsule = instance_create(x, y, obj_absorbparticle);
    capsule.category = equip;
}

