name = sprite_get_name(sprite_index);

name = string_replace(name, 'spanish', '');    
name = string_replace(name, 'japanese', '');    
name = string_replace(name, 'chamorro', '');    

switch (global.language)
{
    case 2:
        name = name + "japanese";
        break;
        
    case 1:
        name = name + "spanish";
        break;
}

if (sprite_exists(asset_get_index(name)))
{
    sprite_index = asset_get_index(name);
}
else
{
    name = string_replace(name, 'spanish', '');    
    name = string_replace(name, 'japanese', '');    
    name = string_replace(name, 'chamorro', '');    
    sprite_index = asset_get_index(name);
}
