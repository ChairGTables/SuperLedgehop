// Get current position of the track
currentPos = audio_sound_get_track_position(global.musicrm1);

// Calculate current tempo position
global.currentWholeSec   =  global.wholeSec   -
    (((currentPos * 100) % (global.bpmToSec * 100))     / 100);
global.currentHalfSec    =  global.halfSec    -
    (((currentPos * 100) % (global.bpmToSec * 100 / 2)) / 100);
global.currentQuarterSec =  global.quarterSec -
    (((currentPos * 100) % (global.bpmToSec * 100 / 4)) / 100);
global.currentEighthSec =  global.eighthSec -
    (((currentPos * 100) % (global.bpmToSec * 100 / 8)) / 100);

// Restart timer
alarm[0] = 20 * room_speed;

// Set resync toggle on
global.resyncing = true;
