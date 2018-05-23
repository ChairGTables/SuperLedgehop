checkValue = 32;
offsetter = 2;
checkThing = 0;
wallDetected = 0;

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
    hspeed = -7;
    rightmomentum = 0;
    wallDetected = 1;
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
    hspeed = 7;
    leftmomentum = 0;
    wallDetected = 1;
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
    vspeed = -7;
    downmomentum = 0;
    wallDetected = 1;
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
    vspeed = 7;
    upmomentum = 0;
    wallDetected = 1;
}
