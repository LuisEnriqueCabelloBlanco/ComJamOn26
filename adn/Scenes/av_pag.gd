extends Sprite2D

var libreta : Libreta
@export var advance = true

func _ready() -> void:
	libreta = get_parent() as Libreta

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		var mouseEvent = event as InputEventMouseButton
		if mouseEvent.button_index == MouseButton.MOUSE_BUTTON_LEFT:
			if mouseEvent.pressed:
				if advance:
					libreta.siguiente()
				else:
					libreta.previo()
