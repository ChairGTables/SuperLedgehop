checkValue = 16;
offsetter = 1;
checkThing = 0;

for (i = 0; i < checkValue; i++)
{
    if (instance_position(x + i, y, obj_wall))
    {
        checkThing = 1;
    }
}
if (checkThing == 1)
{
    x -= offsetter;
    hspeed = 0;
    rightmomentum = 0;
}


checkThing = 0;
for (i = 0; i < checkValue; i++)
{
    if (instance_position(x - i, y, obj_wall))
    {
        checkThing = 1;
    }
}
if (checkThing == 1)
{
    x += offsetter;
    hspeed = 0;
    leftmomentum = 0;
}



checkThing = 0;
for (i = 0; i < checkValue; i++)
{
    if (instance_position(x, y + i, obj_wall))
    {
        checkThing = 1;
    }
}
if (checkThing == 1)
{
    y -= offsetter;
    vspeed = 0;
    downmomentum = 0;
}



checkThing = 0;
for (i = 0; i < checkValue; i++)
{
    if (instance_position(x, y - i, obj_wall))
    {
        checkThing = 1;
    }
}
if (checkThing == 1)
{
    y += offsetter;
    vspeed = 0;
    upmomentum = 0;
}
