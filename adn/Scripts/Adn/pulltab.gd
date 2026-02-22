extends Node2D

var libreta : Libreta
@export var tab : Sprite2D

func _ready() -> void:
	libreta = get_parent() as Libreta

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		var mouseEvent = event as InputEventMouseButton
		if mouseEvent.button_index == MouseButton.MOUSE_BUTTON_LEFT:
			if mouseEvent.pressed:
				if libreta.abierto:
					close()
				else:
					open()

func open():
	libreta.abrir()
	tab.visible = true

func close():
	libreta.cerrar()
	tab.visible = false
