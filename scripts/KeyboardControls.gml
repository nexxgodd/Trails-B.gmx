// Escape game
if keyboard_check_pressed(vk_escape) {
game_end()
}

//next room
if keyboard_check_pressed(vk_space) {
    if room_exists(room_next(room)) room_goto_next();

}

