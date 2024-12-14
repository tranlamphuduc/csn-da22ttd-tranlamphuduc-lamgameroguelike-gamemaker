/*if (global.nhanvat_duocchon == 1) {
    instance_create_layer(x, y, "Layer", obj_noelle);
} else if (global.nhanvat_duocchon == 2) {
    instance_create_layer(x, y, "Layer", obj_nhanvat2);
} else if (global.nhanvat_duocchon == 3) {
    instance_create_layer(x, y, "Layer", obj_nhanvat3);
}*/

if (global.nhanvat_duocchon == 1) {
    instance_create_layer(850, 800, "Instances", obj_noelle);}

alaTime  = 20;
alarm[0] = alaTime; 


alarmSpawnTime  = 30;
alarm[1] = alarmSpawnTime; 

alaTime2  = 20;
alarm[2] = alaTime2; 


spawn_list = [
    { time: 120, enemy: obj_hilichult_1 }, // Spawn obj_hilichult_1 sau 2 giây (120 steps)
    { time: 240, enemy: obj_hilichult_2 }, // Spawn obj_hilichult_2 sau 4 giây (240 steps)
    { time: 360, enemy: obj_slime } // Spawn obj_hilichult_boss sau 6 giây (360 steps)
];


