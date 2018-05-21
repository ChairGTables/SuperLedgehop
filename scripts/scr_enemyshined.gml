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
    if (global.shottype == 0)
    {
        capsule.category = "enhanced";
    }
    if (global.shottype == 1)
    {
        capsule.category = "enhanced";
    }
    if (global.shottype == 2)
    {
        capsule.category = "spread";
    }
    if (global.shottype == 3)
    {
        capsule.category = "rapid";
    }
    if (global.shottype == 4)
    {
        capsule.category = "fire";
    }
    if (global.shottype == 5)
    {
        capsule.category = "ice";
    }
}

