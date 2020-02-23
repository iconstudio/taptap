/// @description 초기화
width = room_width
height = room_height

pad_number_horizontal = 3
pad_number_vertical = 3
pad_number = pad_number_horizontal * pad_number_vertical
pad_padding_x = 24
pad_padding_y = 24
pad_size = sprite_get_width(sTapPad)

pads_width = pad_size * pad_number_horizontal + pad_padding_x * (pad_number_horizontal - 1)
pads_height = pad_size * pad_number_vertical + pad_padding_y * (pad_number_horizontal - 1)
pad_x = (width - pads_width) * 0.5
pad_y = (height - pads_height) * 0.5

pads = ds_grid_create(pad_number_horizontal, pad_number_vertical)
var current_pad = noone
var current_x = pad_x, current_y = pad_y

for (var i = 0; i < pad_number_horizontal; ++i) {
	for (var j = 0; j < pad_number_horizontal; ++j) {
		current_pad = instance_create_layer(current_x, current_y, "Pads", oTapPad)
		ds_grid_set(pads, i, j, current_pad)
		current_y += pad_size + pad_padding_y
	}

	current_x += pad_size + pad_padding_x
}
