/// @description Insert description here
// You can write your code in this editor
instance_destroy(self)
global.life-=1
if(global.life == 0){
	room_goto(rmGameOver)
}	





