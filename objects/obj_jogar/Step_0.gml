if mouse_x>15 && mouse_x<105 && mouse_y>80 && mouse_y<130 {
	image_xscale = 1.5
	image_yscale = 1.5
	if mouse_check_button(mb_left) {
		room_goto(ro_jogo)
	}
} else {
	image_xscale = 1
	image_yscale = 1
}