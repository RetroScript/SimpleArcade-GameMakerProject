/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

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
	instance_create_layer(oPlayer.x, oPlayer.y, "Instances_1", oWeapon)
	weaponed = true;
	oWeapon.dropped = false;
	oWeapon.equiped = true;
	
	show_debug_message("new object created")
	
}


if(weaponed && keyboard_check(ord("H"))){

	oWeapon.shooting = true;
	instance_create_depth(oWeapon.x, oWeapon.y, 0, oBullet)
}

