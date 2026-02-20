extends Node2D
class_name Grabable

var area2d : Area2D
var dragging = false
var mouseOver = false
var pos_inicial
var offset

func _ready():
	pos_inicial = position
	area2d = get_node("Area2D")
	area2d.connect("mouse_entered", OnMouseEntered)
	area2d.connect("mouse_exited", OnMouseExited)

func _input(event: InputEvent) -> void:
	if event is InputEventMouse and mouseOver:
		var mouseEvent = event as InputEventMouse
		if mouseEvent.button_mask == MouseButton.MOUSE_BUTTON_LEFT:
			if mouseEvent.is_pressed():
				dragging = true
				offset = global_position - get_global_mouse_position()
			if mouseEvent.is_released():
				dragging = false

func _process(delta: float) -> void:
	if dragging:	
		global_position = get_global_mouse_position()

func OnMouseEntered():
	mouseOver = true

func OnMouseExited():
	mouseOver = false
