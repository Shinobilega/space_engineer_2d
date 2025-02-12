if mouse_x>15 && mouse_x<105 && mouse_y>280 && mouse_y<330 {
	image_xscale = 1.5
	image_yscale = 1.5
	if mouse_check_button(mb_left){
		game_end()
	}
} else {
	image_xscale = 1
	image_yscale = 1
}