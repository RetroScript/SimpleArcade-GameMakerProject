/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

points = 0;

spawn_cd = 25;
spawn_limit = 5;

r_value_x = random(room_width)
r_value_y = random(room_height)
	

function random_enemy_spawn ()
{
	
	show_debug_message("running random spawn script")
	
	
	if(r_value_x <= oPlayer.player_range[0] && r_value_y <= oPlayer.player_range[1])
	{
		if(r_value_x >= oPlayer.player_range[2] && r_value_y >= oPlayer.player_range[3])
		{
		
			show_debug_message("enemy is able to spawn")
		
			for(i = 0; i < spawn_limit; i++)
			{
			
				instance_create_layer(r_value_x,r_value_y, "Enemies", oEnemy);
				show_debug_message("another enemy spawned")
			}
			
			spawn_cd -= 1;
			
		}
	}
	


}