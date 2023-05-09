system = part_system_create()
type = part_type_create()
emitter = part_emitter_create(system)

part_system_layer(system, "Particles")

part_type_shape(type, pt_shape_disk);
part_type_size(type, 0.002, 0.4, 0, 0);
part_type_scale(type, 1, 1);
part_type_colour3(type, c_yellow,c_orange,c_red);
part_type_alpha2(type, 1, 0);
part_type_speed(type, 2, 4, 0, 0);
part_type_direction(type, 70, 110, 0, 0);
//part_type_gravity(type, 0.20, 270);
part_type_orientation(type, 70, 110, 0, 0, 5);
part_type_blend(type, 1);
part_type_life(type, 10, 40);