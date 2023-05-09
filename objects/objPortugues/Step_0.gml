isOnGround = place_meeting(x,y+1,objColliders)
var colisionX =instance_place(x+speedX, y, objColliders)

if(speedX == 0){
	sprite_index = sprPortugueseStand
}else{
	sprite_index = sprPortuqueseMove
	image_xscale = sign(speedX)*3
}

if(isOnGround){
	timeChoose-=1
	if(timeChoose<=0){
		saveDirection = speedX
		isWalking = choose(true, false)
		if(isWalking){
			speedX=choose(1,-1)
			if(saveDirection!=0 and saveDirection != speedX){
				speedX = saveDirection
			}
		}else{
			speedX = 0
		}
		timeChoose = room_speed *choose(2,3,4,5)
	}
}else{
	speedY+=gravityGeral
}

if(colisionX){
	speedX = speedX*(-1)
}

if(target){
	if(timer > 0 ){
		var directionBullet = point_direction(x,y, target.x, target.y)
		var newInstanceBullet = instance_create_layer(x, y - 40, "Colliders", objBullet)
		with (newInstanceBullet){
			speed = 5
			direction = directionBullet;
		}
		timer -= 100
	}
	timer++
}
/*

*/