//Look to left or right depending on direction
if (hspeed > 0)
{
    image_xscale = 1;
}
else if (hspeed < 0)
{
    image_xscale = -1;
}


//Smooth movement stopper
/*
if (vspeed < 0.5 && vspeed > -0.5)
{
    vspeed = 0;
}

if (vspeed > 0)
{
    vspeed -= 0.5;
}

if (vspeed < 0)
{
    vspeed += 0.5;
}

if (hspeed < 0.5 && hspeed > -0.5)
{
    hspeed = 0;
}

if (hspeed > 0)
{
    hspeed -= 0.5;
}

if (hspeed < 0)
{
    hspeed += 0.5;
}

//Set momentum to zero if they are small enough
if (upmomentum < 0.5)
{
    upmomentum = 0;
}

if (upmomentum > 0)
{
    upmomentum = upmomentum - 0.5;
}


if (leftmomentum < 0.5)
{
    leftmomentum = 0;
}

if (leftmomentum > 0)
{
    leftmomentum = leftmomentum - 0.5;
}


if (rightmomentum < 0.5)
{
    rightmomentum = 0;
}

if (rightmomentum > 0)
{
    rightmomentum = rightmomentum - 0.5;
}


if (downmomentum < 0.5)
{
    downmomentum = 0;
}

if (downmomentum > 0)
{
    downmomentum = downmomentum - 0.5;
}






//Move object based on its current momentum
x -= leftmomentum;
x += rightmomentum;
y += downmomentum;
y -= upmomentum;
*/

//Correct sprite layer ordering
depth = -y;

//Check if enemy is in the state to not perform an action
action = 1;

if (sprite_index == asset_get_index(hurtSprite))
{
    action = 0;
}

//Check if this dude left the screen
if (action == 1 && (x < view_xview-200 || x > view_xview+1168 || y < view_yview-200 || y > view_yview+732))
{
    action = 0;
    hspeed = 0;
    vspeed = 0
}




