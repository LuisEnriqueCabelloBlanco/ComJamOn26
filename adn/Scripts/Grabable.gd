extends Node2D
class_name Grabable

var area2d : Area2D
var dragging = false
var mouseOver = false
var grabActive = true
var pos_inicial
var rot_inicial

func _ready():
	pos_inicial = position
	rot_inicial = rotation
	area2d = get_node("Area2D")
	area2d.connect("mouse_entered", OnMouseEntered)
	area2d.connect("mouse_exited", OnMouseExited)

func _input(event: InputEvent) -> void:
	if !grabActive:
		return
	if event is InputEventMouseButton and mouseOver:
		var mouseEvent = event as InputEventMouseButton
		if mouseEvent.button_index == MouseButton.MOUSE_BUTTON_LEFT:
			if mouseEvent.pressed:
				dragging = true
				get_global_mouse_position()
			if !mouseEvent.pressed:
				dragging = false
				OnDrop()

func _process(delta: float) -> void:
	if dragging:	
		global_position = get_global_mouse_position()

func OnMouseEntered():
	mouseOver = true

func OnMouseExited():
	mouseOver = false

## Sobrescribir con lo que queramos 
func OnDrop():
	global_position = pos_inicial
	global_rotation = rot_inicial
