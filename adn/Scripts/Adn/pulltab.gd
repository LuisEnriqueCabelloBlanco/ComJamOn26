extends Sprite2D

@export var libreta : Libreta
@export var tabs : Array[Texture]

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		var mouseEvent = event as InputEventMouseButton
		if mouseEvent.button_index == MouseButton.MOUSE_BUTTON_LEFT:
			if mouseEvent.pressed:
				if libreta.abierto:
					libreta.cerrar()
					texture = tabs[0]
				else:
					libreta.abrir()
					texture = tabs[1]
