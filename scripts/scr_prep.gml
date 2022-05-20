if (obj_ball.z >= 70)
    {
    sprite_index = serve;
    smashing = true;
    }
else
    {
    if (obj_ball.x >= x) 
        {
        sprite_index = fh;
        }
    else
        {
        sprite_index = bh;
        }
    }

hitting = true;
charging = true;
image_speed = 0;

