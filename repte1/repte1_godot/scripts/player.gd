extends KinematicBody2D

export (int) var speed = 200
var mov = Vector2()

func _ready():
	
	pass
	


func _process(delta):
	mov = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		mov.x += speed
	if Input.is_action_pressed("ui_left"):
		mov.x -= speed
	
	
	position += mov * delta
	
	
