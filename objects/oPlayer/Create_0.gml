/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
life = 100
weaponed = false
spd = 10

range_scale = 3

player_range = [x-(sprite_width*range_scale), y-(sprite_height*range_scale), 
x+(sprite_width*range_scale) , y+(sprite_height*range_scale)]

is_alive = true;

function coliding_enemy ()
{

	if place_meeting(x,y, oEnemy)
	{
	
		life -=1
	
	}
	
	if life <= 0
	{
		
		is_alive = false;
		instance_destroy(oPlayer)
	
	}

}

function movement()
{

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


}