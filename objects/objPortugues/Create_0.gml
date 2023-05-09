
speedX = 0;
speedY = 0;
speedEntity = 0.5
frictionEntity = 0.1
gravityGeral = .3
speedEntity = 0.3
speedX=choose(1,-1)
isWalking = choose(true, false)
timeChoose = room_speed*2
saveDirection =noone

target = noone
timer = room_speed*1

///@method campo_visao(_largura, _altura, _xscale)
fieldVision = function(_largura, _altura, _xscale){
	var _x1, _y1, _x2, _y2
	_x1 = x + 10*sign(speedX)
	_y1 = y + _altura / 2
	_x2 = _x1 + _largura * _xscale
	_y2 = _y1 - _altura
	
	//Desenhar o campo de visão
	//draw_rectangle(_x1, _y1, _x2, _y2, false)
	
	var _alvo = collision_rectangle(_x1, _y1, _x2, _y2, objPlayer, 0, 1)	
	return _alvo
}
