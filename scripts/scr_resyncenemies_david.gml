// Resyncing
if (global.resyncing)
{
    if (shootBeat == global.wholeSec)
    {
        shootTimer = global.currentWholeSec;
    } else if (shootBeat == global.halfSec)
    {
        shootTimer = global.currentHalfSec;
    } else if (shootBeat == global.quarterSec)
    {
        shootTimer = global.currentQuarterSec;
    } else if (shootBeat == global.eighthSec)
    {
        shootTimer = global.currentEighthSec;
    }
    

    if (moveBeat == global.wholeSec)
    {
        moveTimer = global.currentWholeSec;
    } else if (moveBeat == global.halfSec)
    {
        moveTimer = global.currentHalfSec;
    } else if (moveBeat == global.quarterSec)
    {
        moveTimer = global.currentQuarterSec;
    }
}
