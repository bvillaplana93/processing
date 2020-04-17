extends RigidBody2D

#En aquest script comprovem quan l'objecte "pilota" ha tocat un dels colliders per tal que canvi de color.

func _ready():
	pass 
	
# warning-ignore:unused_argument
func _process(delta):
	
	 pass
	

func _on_Area2D_body_entered(body):
	print("ha tocat1!")
	modulate = Color(Color(0, 0, 1))
	


func _on_Area2D2_body_entered(body):
	print("ha tocat2!")
	modulate = Color(Color(0, 1, 0))


func _on_Area2D3Up_body_entered(body):
	print("ha tocat3!")
	modulate = Color(Color(1, 0, 0))
	


func _on_Area2DPlayer_body_entered(body):
	print("ha tocat4!")
	modulate = Color(Color(1, 1, 0))


func _on_Area2DAway_body_entered(body):
	get_tree().reload_current_scene()
