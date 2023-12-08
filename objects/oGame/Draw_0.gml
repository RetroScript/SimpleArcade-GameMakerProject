/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_text_color(10, 10, $"player coords: {x} {y}", c_aqua,c_blue,c_purple,c_fuchsia, 100)
draw_text_color(10, 25, $"gun coords: {oWeapon.x} {oWeapon.y}", c_aqua,c_blue,c_purple,c_fuchsia, 100)


draw_text(10, 50, $"gun angle: {oWeapon.image_angle}")

draw_text(10, 75, $"random_x {r_value_x}, random_y {r_value_y}")
draw_text(10, 90, $"amount of enemies {instance_number(oEnemy)}, spawn limit: {spawn_limit}")
draw_text(10, 105, $"spawn cooldown {spawn_cd}, spawnable {spawnable}")

