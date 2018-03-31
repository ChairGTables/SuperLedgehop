xWallCheck = 0;
for (i = 0; i < abs(hspeed) * 2; i++)
{
    for (j = -32 * 2; j < 32; j++)
    {
        if (instance_position(x + i, y + j, obj_wall) && hspeed > 0)
        {
            xWallCheck = 1;    
        }
        if (instance_position(x - i, y + j, obj_wall) && hspeed < 0)
        {
            xWallCheck = 1;    
        }
    }                
}
if (xWallCheck == 1)
{
    x -= hspeed + rightmomentum - leftmomentum;
    y -= vspeed + downmomentum - upmomentum;
    hspeed = 0;
    vspeed = 0;    
    rightmomentum = 0;
    leftmomentum = 0;
    upmomentum = 0;
    downmomentum = 0;
}

yWallCheck = 0;
for (i = 0; i < abs(vspeed) * 2; i++)
{
    for (j = -32 * 2; j < 32; j++)
    {
        if (instance_position(x + j, y + i, obj_wall) && vspeed > 0)
        {
            yWallCheck = 1;    
        }
        if (instance_position(x + j, y - i, obj_wall) && vspeed < 0)
        {
            yWallCheck = 1;    
        }
    }                
}
if (yWallCheck == 1)
{
    x -= hspeed + rightmomentum - leftmomentum;
    y -= vspeed + downmomentum - upmomentum;
    hspeed = 0;
    vspeed = 0;    
    rightmomentum = 0;
    leftmomentum = 0;
    upmomentum = 0;
    downmomentum = 0;
}
            

if (instance_position(x + rightmomentum - leftmomentum, y + downmomentum - upmomentum, obj_wall))
{
    x -= hspeed + rightmomentum - leftmomentum;
    y -= vspeed + downmomentum - upmomentum;
    hspeed = 0;
    vspeed = 0;    
    rightmomentum = 0;
    leftmomentum = 0;
    upmomentum = 0;
    downmomentum = 0;
}
