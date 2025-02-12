#region MOVIMENTAÇÃO
if keyboard_check(ord("W")){
	y -= 1
}
if keyboard_check(ord("S")){
	y += 1
}
if keyboard_check(ord("D")){
	x += 1
}
if keyboard_check(ord("A")){
	x -= 1
}
#endregion
#region BLOCOS
// Defina o tamanho do grid
var grid_size = 32;
if mouse_check_button_pressed(mb_left) {
    // Arredonde as coordenadas do mouse para o grid
    var grid_x = mouse_x div grid_size * grid_size;
    var grid_y = mouse_y div grid_size * grid_size;

    // Verifique se já existe um objeto na posição do grid
    if instance_position(grid_x, grid_y, obj_steelplate) == noone {
        // Crie o objeto na posição do grid
        instance_create_layer(grid_x, grid_y, "Instances", obj_steelplate);
    }
    else {
        show_debug_message("Célula ocupada!");
    }
}
if mouse_check_button_pressed(mb_right) {
    // Encontre a instância na posição do mouse
    var instance = instance_position(mouse_x, mouse_y, all);

    // Verifique se a instância existe e não é obj_player ou obj_mira
    if instance != noone && instance.object_index != obj_player{
        instance_destroy(instance);
    }
}
#endregion