var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

//BOTAO SPRITE
var _sprw = sprite_get_width(Spr_botao_voltar)/2
var _sprh = sprite_get_height(Spr_botao_voltar)/2

var x1 = x + _sprw // X do primeiro ponto
var y1 = y + _sprh // X do segundo ponto


draw_sprite_ext(botao_spr,0,x1,y1,xscale,bscale,0,c_white,balpha)

if point_in_rectangle(mx,my,x1 - _sprw,y1 - _sprh,x1 + _sprw,y1 + _sprh){
	
	botao_spr = Spr_botao_voltar_per

if mouse_check_button_pressed(mb_left){
room_goto(Room_principal);	
global.seguir = 0
}

}else{
	botao_spr = Spr_botao_voltar	
}

