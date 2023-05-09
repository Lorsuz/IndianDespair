
var colisionX =instance_place(x+speedX, y, objColliders)
if(colisionX){
	if(speedX>0){
	x = colisionX.bbox_left + (x - bbox_right);
	}
	if(speedX<0){
		x = colisionX.bbox_right + (x - bbox_left);
	}
	speedX = 0
}
x+= speedX
///////////////////////////////////////////////////
var colisionY =instance_place(x, y+speedY, objColliders)
if(colisionY){
	if(speedY>0){
		y = colisionY.bbox_top + (y - bbox_bottom);
	}
	if(speedY<0){
		y = colisionY.bbox_bottom + (y - bbox_top);
	}
	speedY = 0
}
y+=speedY


