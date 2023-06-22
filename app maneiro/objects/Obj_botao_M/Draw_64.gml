var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var xx = device_mouse_x_to_gui(0);
var xy = device_mouse_y_to_gui(0);

//BOTAO SPR
var _sprw = sprite_get_width(Spr_botao_musicas)/2
var _sprh = sprite_get_height(Spr_botao_musicas)/2

var x1 = x + _sprw // X do primeiro ponto
var y1 = y + _sprh // X do segundo ponto

var palpha = 0

draw_sprite_ext(botao_spr,0,x1,y1,bscale,bscale,0,c_white,balpha)

if point_in_rectangle(mx,my,x1 - _sprw,y1 - _sprh,x1 + _sprw,y1 + _sprh){
	
botao_spr = Spr_botao_per_musicas

if mouse_check_button_pressed(mb_left) && pause = 0{
 audio_play_sound(som,10,0)
 alarm[0] = 1
}
if mouse_check_button_pressed(mb_left) && pause = 1{
 audio_pause_sound(som)
 alarm[1] = 1
}
if mouse_check_button_pressed(mb_left) && pause = 2{
 audio_resume_sound(som)
 alarm[2] = 1
}
}else{
botao_spr = Spr_botao_musicas	
}

//BOTAO SPR 2
var _sprw2 = sprite_get_width(Spr_stop)/2
var _sprh2 = sprite_get_height(Spr_stop)/2

var xx1 = xkk1 + _sprw2 // X do primeiro ponto
var yy1 = ykk1 + _sprh2 // X do segundo ponto

if pause >= 1 {
draw_sprite_ext(stop_spr,0,xx1,yy1,bscale,bscale,0,c_white,balpha)

if point_in_rectangle(xx,xy,xx1 - _sprw2,yy1 - _sprh2,xx1 + _sprw2,yy1 + _sprh2){
	stop_spr = Spr_stop_per
	if mouse_check_button_pressed(mb_left){
	audio_stop_sound(som)
	pause = 0
	}
}else{
 stop_spr = Spr_stop	
}}

//PARADA PROS BOTAO VAZA
if !audio_is_playing(som){
 	pause = 0
}

// SPR PAUSE/PLAY
if pause = 1 {
 palpha = 1
draw_sprite_ext(Spr_pause,0,x,y,1,1,0,c_white,palpha)
}if pause = 2 {
 palpha = 1
draw_sprite_ext(Spr_play,0,x,y,1,1,0,c_white,palpha)
}if pause = 0 {
 palpha = 0
}

