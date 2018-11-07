name = sprite_get_name(sprite_index);

name = string_replace(name, 'spanish', '');    
name = string_replace(name, 'japanese', '');    
name = string_replace(name, 'chamorro', '');    

switch (global.language)
{
    case 1:
        name = name + "spanish";
        break;
}

sprite_index = asset_get_index(name);
