extends Node2D


signal buttonPressed
signal buttonReleased

var is_pressed

func _on_area_2d_body_entered(body: Node2D) -> void:
	if not is_pressed:
		print("Entro")
		buttonPressed.emit()
	
	is_pressed = true
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	if is_pressed:
		buttonReleased.emit()
	
	is_pressed = false
	pass # Replace with function body.
