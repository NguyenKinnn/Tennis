if instance_exists(obj_ball) && obj_ball.side == 1
    {
    //move left
    if (x - sprite_width/4) >= obj_ball.x
         {
         if (x - sprite_width/2) >= 0 
             {
             x -= sp/3;
             }
         if (obj_ball.y - y) <= sprite_height*3 && obj_ball.y >= y
            {
            sprite_index = fh;
            }
         }
    //move right
    else if (x + sprite_width/4) <= obj_ball.x
         {
         if (x + sprite_width/2) <= room_width
            {
            x += sp/3;
            }
         if (obj_ball.y - y) <= sprite_height*3 && obj_ball.y >= y
            {
            sprite_index = bh;
            }
         }
    }
//reset
if sprite_index != idle && image_index > image_number - 1
        {
        sprite_index = idle;
        }
