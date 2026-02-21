extends Node2D


signal buttonPressed
signal buttonReleased

var is_pressed

var bodyRef: Node2D = null

func _on_area_2d_body_entered(body: Node2D) -> void:
	if not is_pressed and bodyRef == null:
		bodyRef = body
		buttonPressed.emit()
		is_pressed = true
	
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	if is_pressed and body == bodyRef:
		bodyRef = null
		buttonReleased.emit()
		is_pressed = false
	
	pass # Replace with function body.
