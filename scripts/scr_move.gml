if hitting = false
    {    
    if (x - sprite_width/2) >= 0 && keyboard_check(vk_left) && !keyboard_check(vk_right)
        {
        moving = true;
        x -= sp;
        alarm[0] += 3;
        if (alarm[0] >= 30)
            {
            sprite_index = runleft;
            }
        }
    if (x + sprite_width/2) <= room_width && keyboard_check(vk_right) && !keyboard_check(vk_left)
        {
        moving = true;
        x += sp;
        alarm[0] += 3;
        if (alarm[0] >= 30)
            {
            sprite_index = runright;
            }
        }
    if (y + sprite_height/2) <= room_height && keyboard_check(vk_down)
        {
        moving = true;
        y += sp;
        }
    if (y - sprite_height/2) >= room_height*0.45 && keyboard_check(vk_up)
        {
        moving = true;
        y -= sp;
        }
    if keyboard_check_released(vk_left) || keyboard_check_released(vk_right)
        {
        sprite_index = idle;
        moving = false;
        alarm[0] = 0;
        } 
    }
