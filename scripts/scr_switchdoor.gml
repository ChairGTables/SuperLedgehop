for( var i = 0; i < instance_number( obj_door_david ); i++ )
{
    door = instance_find( obj_door_david, i );
    
    if( door.unlockID == self.unlockID && cooldown < 1)
    {
        door.open = !door.open;
        active = !active;
        cooldown = 6;
        break;
    }
}

if( active )
{
    image_index = 1;
}
else
{
    image_index = 0;
}

instance_destroy( other );
