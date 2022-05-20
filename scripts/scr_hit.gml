//Swing Side
if instance_exists(obj_ball)
    {
    switch (keyboard_key)
        {
        case flat:
            scr_flat();
            break;
        case ts:
            scr_ts();
            break;
        case sl:
            scr_sl();
            break;
        }
    }
//Directional Control and Power
if hitting = true
    {
    if keyboard_check(vk_left) && direction <= dirmax
        {
        direction += 2.5;
        }
    if keyboard_check(vk_right) && direction >= dirmin
        {
        direction -= 2.5;
        }
    if keyboard_check(vk_up) && force <= forcemax
        {
        force += 1;
        }
    if keyboard_check(vk_down) && force >= forcemin
        {
        force -= 1;
        }
    }
//Release
if keyboard_check_released(flat) || keyboard_check_released(sl) || keyboard_check_released(ts)
    {
    charging = false;
    image_speed = 0.25;
    }
//Neutral Position
if sprite_index != spr_player_idle 
    if image_index > image_number - 1
        {
        sprite_index = idle;
        hitting = false;
        smashing = false;
        direction = 90;
        force = iniforce;
        }


