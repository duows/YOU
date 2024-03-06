velh = 0;
velv = 0;
velc = 3.0;

dash_direction = 0
dash_force = 15
dash_time = 0
dash_distance = 10
can_dash = true
dash_cooldown = 2//300

_helditem = instance_create_layer(x, y, "Instances", obj_flashlight);

state = player_states_free;