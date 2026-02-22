extends Node


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		var mouseEvent = event as InputEventMouseButton
		if mouseEvent.button_index == MouseButton.MOUSE_BUTTON_LEFT:
			if mouseEvent.pressed:
				var ms = get_parent() as Adn
				GameManager.restart_level.emit()
				ms.ClearLinks()
