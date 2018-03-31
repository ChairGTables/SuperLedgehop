speedCap = 30;

if (instance_exists(obj_chizuru))
{
    if (obj_chizuru.spinning == 0)
    {
        obj_chizuru.spinning = 1;
        obj_chizuru.action = 0;
        obj_chizuru.waveshine = 0;
        
        //Check if there's a wall nearby
        xWallCheck = 0;
        for (i = 0; i < 64; i++)
        {
            for (j = -64; j < 64; j++)
            {
                if (instance_position(obj_chizuru.x + i, obj_chizuru.y + j, obj_wall) && global.chizurumovex > 0)
                {
                    xWallCheck = 1;    
                }
                if (instance_position(obj_chizuru.x - i, obj_chizuru.y + j, obj_wall) && global.chizurumovex < 0)
                {
                    xWallCheck = 1;    
                }
            }                
        }
        if (xWallCheck == 0)
        {
            if (obj_chizuru.hspeed > speedCap)
            {
                obj_chizuru.hspeed = speedCap;
            }
            else if (obj_chizuru.hspeed < -speedCap)
            {
                obj_chizuru.hspeed = -speedCap;
            }
            else
            {
                obj_chizuru.hspeed += global.chizurumovex * 25;
            }
            
        }
        else
        {
            obj_chizuru.hspeed = 0;
        }
        
        yWallCheck = 0;
        for (i = 0; i < 64; i++)
        {
            for (j = -64 * 2; j < 64; j++)
            {
                if (instance_position(obj_chizuru.x + j, obj_chizuru.y + i, obj_wall) && global.chizurumovey > 0)
                {
                    yWallCheck = 1;    
                }
                if (instance_position(obj_chizuru.x + j, obj_chizuru.y - i, obj_wall) && global.chizurumovey < 0)
                {
                    yWallCheck = 1;    
                }
            }                
        }
        if (yWallCheck == 0)
        {
            if (obj_chizuru.vspeed > speedCap)
            {
                obj_chizuru.vspeed = speedCap;
            }
            else if (obj_chizuru.vspeed < -speedCap)
            {
                obj_chizuru.vspeed = -speedCap;
            }
            else
            {
                obj_chizuru.vspeed += global.chizurumovey * 25;
            }

        }
        else
        {
            obj_chizuru.vspeed = 0;
        }
   
        obj_chizuru.alarm[10] = 20;
        obj_chizuru.alarm[8] = -1;
        obj_chizuru.alarm[9] = -1;
        
        obj_chizuru.sprite_index = spr_chizuruspin;
    }
    
}
