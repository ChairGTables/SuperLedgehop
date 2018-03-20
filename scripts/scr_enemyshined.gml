multiplier = 12;

if (global.chizurumovex < 0)
{
    leftmomentum = -global.chizurumovex * multiplier;
}
if (global.chizurumovex > 0)
{
    rightmomentum = global.chizurumovex * multiplier;
}

if (global.chizurumovey < 0)
{
    upmomentum = -global.chizurumovey * multiplier;
}
if (global.chizurumovey > 0)
{
    downmomentum = global.chizurumovey * multiplier;
}
