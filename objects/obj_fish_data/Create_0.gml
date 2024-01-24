randomize()

body_indexes = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
// 0 anunan (1 negro 2 rosado) , 3 cmu (4 heater),
// 5 loopies, 6 ruben, 7 sander, 8 wobo (9 rojo 10 Azul)
tail_indexes = [0, 2, 2, 3, 3, 1, 5, 4, 6, 2, 2] 
// 0 ap 1 arg 2 chl 3 mex 4 ecu 5 pe 6 wob

fish_id_mapping = ds_map_create();
ds_map_add(fish_id_mapping, "amapy", 0);
ds_map_add(fish_id_mapping, "amapy2", 1);
ds_map_add(fish_id_mapping, "amapy3", 2);
ds_map_add(fish_id_mapping, "cmu", 3);
ds_map_add(fish_id_mapping, "cmu2", 4);
ds_map_add(fish_id_mapping, "loopies", 5);
ds_map_add(fish_id_mapping, "ruben", 6);
ds_map_add(fish_id_mapping, "sander", 7);
ds_map_add(fish_id_mapping, "wobo", 8);
ds_map_add(fish_id_mapping, "wobo2", 9);
ds_map_add(fish_id_mapping, "wobo3", 10);

function setup_fish(xpos, ypos, papa_id, mama_id) 
{
var my_fish = instance_create_layer(xpos, ypos, "Instances", obj_fish)

var papa_numid = ds_map_read(fish_id_mapping, papa_id)
var mama_numid = ds_map_read(fish_id_mapping, mama_id)

my_fish.papa_id = papa_numid
my_fish.mama_id = mama_numid
return my_fish;
}
