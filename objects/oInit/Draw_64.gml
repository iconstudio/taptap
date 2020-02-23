/// @description 로딩 메시지 출력
draw_set_halign(1)
draw_set_valign(1)

if loading_failed {
	draw_text(room_width * 0.5, room_height * 0.5, "Loading failed.")
} else {
	draw_text(room_width * 0.5, room_height - 40, string(audio_group_load_progress(audiogroup_default)) + " / 100")
}


