/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

player_range = [x-(sprite_width*range_scale), y-(sprite_height*range_scale), 
x+(sprite_width*range_scale) , y+(sprite_height*range_scale)]


movement()

//coliding_enemy()

if(place_meeting(x, y, oWeapon) && oWeapon.equiped = false){
	
	instance_destroy(oWeapon)
	instance_create_layer(oPlayer.x, oPlayer.y, "Weapon_and_projectiles", oWeapon)
	weaponed = true;
	oWeapon.dropped = false;
	oWeapon.equiped = true;
	
	show_debug_message("new object created")
	
}


if(weaponed && mouse_check_button(mb_left)){

	oWeapon.shooting = true;
	instance_create_layer(oWeapon.x , oWeapon.y, "Weapon_and_projectiles", oBullet)
}


