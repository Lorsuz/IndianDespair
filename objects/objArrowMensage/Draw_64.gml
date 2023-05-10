/// @description Insert description here
// You can write your code in this editor

var _guiw = display_get_gui_width()
var _guih = display_get_gui_height()

var _x = 0
var _y = _guih - 500
var _c = c_black

draw_rectangle_color(_x, _y, _guiw, _guih - 250, _c, _c, _c, _c, false)
draw_set_font(Font1)
draw_text_ext(_x+64, _y+48, mensage, 32, _guiw-128)





