/// @description pad_pop([x/instance], [y])
/// @function pad_pop
/// @param [x/instance] { integer }
/// @param [y] { integer }
if argument_count == 1 {
	pad_make_tappable(argument[0])
} else {
	pad_make_tappable(pad_get_id(argument[0], argument[1]))
}
