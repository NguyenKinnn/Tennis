//Ball Toss
if keyboard_check(vk_space) 
    {
    if !instance_exists(obj_ball)
        {
        with (instance_create(x+xdist,y-ydist,obj_ball))
            {
            zmax = other.toss;
            }
        }
    else if obj_ball.side == 1  
        {
        instance_destroy(obj_ball);
        with (instance_create(x+xdist,y-ydist,obj_ball))
            {
            zmax = other.toss;
            }
        }
    }
