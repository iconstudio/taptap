/// @description *pad_get_random_id()
/// @function pad_get_random_id
with oGameManager {
	return pads[# irandom(pad_number_horizontal), irandom(pad_number_vertical)]
}
return noone
