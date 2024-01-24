
base_number_roll = irandom_range(0, 10)

papa_id = base_number_roll
mama_id = base_number_roll

dominant_id = papa_id
subordinate_id = mama_id

if (choose(0, 1) == 1){
        dominant_id = mama_id
		subordinate_id = papa_id
}


body_img_idx = inst_FD418D2.body_indexes[dominant_id]
tail_img_idx = inst_FD418D2.tail_indexes[subordinate_id]




image_speed = 0;
speed = 3;
alarm[0] = irandom_range(30,70);


