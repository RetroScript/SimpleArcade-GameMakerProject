/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

points = 0;

spawnable = true
spawn_cd = 100;
spawn_limit = 5;

r_value_x = random_range(0, room_width)
r_value_y = random_range(0, room_height)
	

function random_enemy_spawn ()
{
	
	show_debug_message("running random spawn script")
	
	r_value_x = random_range(0, room_width)
	r_value_y = random_range(0, room_height)
	
	if(r_value_x >= oPlayer.player_range[0] && r_value_y >= oPlayer.player_range[1]
		&& instance_number(oEnemy) < spawn_limit)
	{
		if(r_value_x <= oPlayer.player_range[2] && r_value_y <= oPlayer.player_range[3])
		{
		
			spawnable = false			
	
		}else
			{
		
			spawnable = true
		
			}
	}
	
	
	
	if (spawnable) 
	{
		
		spawn_cd -=1
		
		if spawn_cd <= 0
		{
		
		instance_create_layer(r_value_x,r_value_y, "Enemies", oEnemy);
		show_debug_message("another enemy spawned")
		spawn_cd = 50;
		}	
	}

}