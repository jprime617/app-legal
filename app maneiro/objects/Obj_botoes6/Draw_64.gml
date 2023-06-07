var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
//var b_x = x1 + 15
//var b_y = x2
/*


// BOTAO 1
if point_in_rectangle(mx,my,x1,x2,y1,y2){
	balpha = 1
	touf = 0
	if mouse_check_button_pressed(mb_left) && global.pontos >= 50{
		
	global.pontos -= 50
	}
}else{
	balpha = .6	
	touf = 1
}

draw_set_alpha(balpha)
draw_button(x1,x2,y1,y2,touf)
draw_set_alpha(1)
draw_set_color(c_purple)
draw_text(x+25,y-80,"Compras")
draw_text(b_x,b_y+5,"FAZ O L")
draw_text(b_x-40,b_y+5,"50")*/

//BOTAO SPRITE
var _sprw = sprite_get_width(Spr_botao)/2
var _sprh = sprite_get_height(Spr_botao)/2

var x1 = 650 + _sprw // X do primeiro ponto
var y1 = 1700 + _sprh // X do segundo ponto


draw_sprite_ext(Spr_botao,0,x1,y1,bscale,bscale,0,c_white,balpha)

if point_in_rectangle(mx,my,x1 - _sprw,y1 - _sprh,x1 + _sprw,y1 + _sprh){

if mouse_check_button(mb_left){
show_message("sexokkk")	
}
}