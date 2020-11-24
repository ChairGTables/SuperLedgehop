alarm[0] = 2;
testString = 1;
attacking = false;


if (instance_exists(obj_chizuru) && !isShooting)
{
    testString = 2;
    if (point_distance(x, y, obj_chizuru.x, obj_chizuru.y) > 30)
    {
        speed = 8;
        if (point_distance(x, y, obj_chizuru.x, obj_chizuru.y) > 100)
        {
            speed = 10;
        }
        if (point_distance(x, y, obj_chizuru.x, obj_chizuru.y) > 1000)
        {
            speed = 25;
        }
        
        direction = point_direction(x, y, obj_chizuru.x, obj_chizuru.y);
        testString = direction;
    }
    else
    {
        speed = 0;
    }
}
bypassShooting = false;
