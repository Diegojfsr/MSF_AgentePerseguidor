/// @description Insert description here
// You can write your code in this editor
var _inst = collision_circle(x, y, raio, objPlayer, false, true);

switch(estado_atual){
	
	case ESTADOS_PERSEGUIDOR.PARADO:
		
		//Se houve colisão
		if _inst != noone{			
			estado_atual = ESTADOS_PERSEGUIDOR.PERSEGUINDO;			
		}
		
	
	break;
	
	case ESTADOS_PERSEGUIDOR.PERSEGUINDO:
		
		move_towards_point(objPlayer.x, objPlayer.y, 2);
		
		var _dist = distance_to_object(objPlayer);
		
		if (_dist < 128)
			estado_atual = ESTADOS_PERSEGUIDOR.ATIRANDO;
		
		//Se não houve colisão com o Player
		if _inst == noone{
			speed = 0;
			estado_atual = ESTADOS_PERSEGUIDOR.PARADO;	
		}
		
	break;
	
	case ESTADOS_PERSEGUIDOR.ATIRANDO:
		/*O estado atirando não está implemento
		por completo.
		*/
		if (_inst == noone){
			speed = 0;
			estado_atual = ESTADOS_PERSEGUIDOR.PARADO;
		}
		alarm[0] = 1
		
	break;
	
	
}







