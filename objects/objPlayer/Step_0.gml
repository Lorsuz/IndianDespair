/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

y += gravityGeral

var left,right,jump;
left=keyboard_check(inputs.left);
right=keyboard_check(inputs.right);
jump=keyboard_check_pressed(inputs.jump);
isOnGround = place_meeting(x,y+1,objColliders)


///////////////////////////////////////////

/////////////////////////////////////////////
speedX += (right - left)*speedEntity
speedY+=gravityGeral

if(speedX>0){
	speedX -= frictionEntity*2
	if(speedX < 0){
		speedX = 0
	}
}
if(speedX<0){
		speedX += frictionEntity*2
		if(speedX > 0){
			speedX = 0
		}
}
/////////////////////////////////////////////
if(isOnGround){
	if(jump){
		speedY=-speedJump
	}
	
}
if(speedX == 0){
		sprite_index = sprPlayer
	}else{
		sprite_index = sprPlayerStand
	}
/////////////////////////////////////////////
if(speedX != 0){
	image_xscale = sign(speedX)*3
}


if(distance_to_object(objArrow) <= 30){
	if(keyboard_check(ord("C")) and not instance_exists(objArrowMensage)){
		var _Tutorial = instance_nearest(x, y, objArrow)
		var _TutorialText = instance_create_layer(x, y, "TextBoxes", objArrowMensage)
		_TutorialText.mensage = _Tutorial.mensage
	}
}

if(distance_to_object(objArrow) >= 100 and instance_exists(objArrowMensage)){
	instance_destroy(objArrowMensage)
}

if(global.life > maxLife) global.life = maxLife


