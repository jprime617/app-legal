x = lerp(x,posicao,0.01)
image_angle = angulo

if instance_exists(Obj_pou) {
	angulo += spd
}
if angulo = 5 {
	spd = -0.2
}
if angulo = -5 {
	spd = 0.2
}
