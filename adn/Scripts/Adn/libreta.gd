extends Node2D
class_name Libreta

var abierto =  false
@export var notas: Array[Texture]
@export var tweenTime = 1.0

var unlockedNotes = 0
var current = 0

func abrir():
	abierto = true
	var tween = create_tween().bind_node(self)
	var pos_final = Vector2(position.x - 1320, position.y)
	tween.tween_property(self, "position", pos_final, tweenTime)
func cerrar():
	abierto = false
	var tween = create_tween().bind_node(self)
	var pos_final = Vector2(position.x + 1320, position.y)
	tween.tween_property(self, "position", pos_final, tweenTime)
