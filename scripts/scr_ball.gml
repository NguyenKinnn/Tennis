speed = speed*0.995;   
//opponent side
if side == 1
    {    
    if place_meeting(x,y, obj_opponent) && obj_opponent.sprite_index != spr_player_oidle && obj_opponent.image_index >= 3
        {
        motion_set(obj_opponent.direction + random_range(-5,5), random_range(0.9,1)*obj_opponent.force + speed*.2);
        side = 0;
        spin = random_range(obj_opponent.spin-2, obj_opponent.spin+2);
        zmax = 50 + random_range(abs(spin), abs(spin*1.5));
        bouncing = true;
        bounces = 0;
        }
    }
//player side
else
    {    
    if place_meeting(x,y, obj_player) && obj_player.hitting = true && obj_player.image_index >= 3
        {
        motion_set(obj_player.direction + random_range(-5,5), random_range(0.9,1)*obj_player.force + speed*.2);
        side = 1;
        spin = random_range(obj_player.spin-2, obj_player.spin+2);
        zmax = 50 + random_range(abs(spin), abs(spin*1.5));
        bouncing = true;
        bounces = 0;
        }
    }
//falling
if bouncing == false && zmax >= 3
    {
    z = z*0.99 - (zmax/30 - speed/25 + spin/10);
    if z <= 0
        {
        bouncing = true;
        bounces += 1;
        zmax = zmax * ((spin*0.01)+0.8);
        spin = spin*0.5 + speed;
        sidespin *= 0.25;
        motion_set(direction , (speed+(spin/3))*.7);
        }
    }    
//ball rising
else if bouncing == true
    {
    z += 5 - (z*0.005+zmax*0.025 + speed/7 - abs(spin/10));  
    if z >= zmax
        {
        bouncing = false;      
        }
    }

//side spin
if sidespin != 0
    {
    x += sidespin/10;
    }
