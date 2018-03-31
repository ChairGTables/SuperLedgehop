

//Do not touch!

move_bounce_all(false);
myNum = 7;

if (vspeed < 0)
{
    y += abs(vspeed) * 2;
}
if (vspeed > 0)
{
    y -=  abs(vspeed) * 2;
}
if (hspeed < 0)
{
    x += abs(hspeed) * 2;
}
if (hspeed > 0)
{
    x -= abs(hspeed) * 2;
}


if (upmomentum > 0)
{
    y += myNum;
}
if (downmomentum > 0)
{
    y -= myNum;
}
if (leftmomentum > 0)
{
    x += myNum;
}
if (rightmomentum > 0)
{
    x -= myNum;
}
