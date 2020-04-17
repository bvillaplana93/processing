extends KinematicBody2D

#Variables de moviment

export (int) var speed = 200
var mov = Vector2()

#Aquest mètode equival al start() en Unity

func _ready():
	
	pass
	

#Aquest mètode equival a l'update que tenim a Unity

#Apliquem un moviment al nostre "jugador"

func _process(delta):
	mov = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		mov.x += speed
	if Input.is_action_pressed("ui_left"):
		mov.x -= speed
	
	
	position += mov * delta
	
	
