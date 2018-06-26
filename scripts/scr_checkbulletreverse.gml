
//Change bullets when out
if (instance_exists(obj_chizuru))
{
    weaponChanged = false;
    for (i = 0; i < 2; i++)
    {
        if (global.icecount <= 0 && global.shottype == 5)
        {
            global.shottype -= 1;
            weaponChanged = true;
        }
        if (global.firecount <= 0 && global.shottype == 4)
        {
            global.shottype -= 1;
            weaponChanged = true;
        }
        if (global.rapidcount <= 0 && global.shottype == 3)
        {
            global.shottype -= 1;
            weaponChanged = true;
        }
        if (global.spreadcount <= 0 && global.shottype == 2)
        {
            global.shottype -= 1;
            weaponChanged = true;
        }
        if (global.enhancedcount <= 0 && global.shottype == 1)
        {
            global.shottype = 0;
            weaponChanged = true;
        }

    }
        
    if (!(instance_exists(obj_chizurucurrentbullet)) && weaponChanged == true)
    {
        var currentBullet = instance_create(x, y, obj_chizurucurrentbullet);   
    }
}
