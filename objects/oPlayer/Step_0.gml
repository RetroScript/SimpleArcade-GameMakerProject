/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

player_range = [x-256, y-256, x+256, y+256]

#region movements
if(keyboard_check(ord("A"))){


	x -= spd;

}

if(keyboard_check(ord("D"))){


	x += spd;

}if(keyboard_check(ord("W"))){


	y -= spd;

}if(keyboard_check(ord("S"))){


	y+= spd;

}
#endregion 


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

