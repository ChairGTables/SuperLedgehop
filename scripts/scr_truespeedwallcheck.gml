if (hspeed != 0)
{
    if (place_meeting(x + hspeed, y, obj_wall))
    {
        if (hspeed > 0)
        {
            move_contact_all(0, hspeed);
        }    
        
        if (hspeed < 0)
        {
            move_contact_all(180, -hspeed);
        }
        hspeed = 0;
    }
    else if (place_meeting(x + hspeed/2, y, obj_wall))
    {
        if (hspeed > 0)
        {
            move_contact_all(0, hspeed/2);
        }    
        else
        {
            checkRight = 0;
        }
        
        if (hspeed < 0)
        {
            move_contact_all(180, -hspeed/2);
        }
        else
        {
            checkLeft = 0;
        }
        hspeed = 0;
    }
}

if (vspeed != 0)
{
    if (place_meeting(x, y + vspeed, obj_wall))
    {
        if (vspeed > 0)
        {
            move_contact_all(270, vspeed);
        }
        if (vspeed < 0)
        {
            move_contact_all(90, -vspeed);
        }
        vspeed = 0;
    }
    else if (place_meeting(x, y + (vspeed/2), obj_wall))
    {
        if (vspeed > 0)
        {
            move_contact_all(270, vspeed);
        } 
        if (vspeed < 0)
        {
            move_contact_all(90, -vspeed);
        }
        vspeed = 0;
    }
}
