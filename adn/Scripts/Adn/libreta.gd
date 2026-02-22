extends Node2D
class_name Libreta

var abierto =  false
@export var notas: Array[Texture]
@export var notaSprite : Sprite2D
@export var tweenTime = 1.0

var unlockedNotes = -1
var current = 0

func _ready() -> void:
	visible = false
	GameManager.unlock_note.connect(unlock_note)
	notaSprite.texture = notas[current]

func abrir():
	abierto = true
	visible = true
	var tween = create_tween().bind_node(self)
	var pos_final = Vector2(position.x - 1320, position.y)
	tween.tween_property(self, "position", pos_final, tweenTime)

func cerrar():
	abierto = false
	var tween = create_tween().bind_node(self)
	var pos_final = Vector2(position.x + 1320, position.y)
	tween.tween_property(self, "position", pos_final, tweenTime)

func siguiente():
	if current < notas.size() && current < unlockedNotes:
		current += 1
	notaSprite.texture = notas[current] 

func previo():
	if current > 0:
		current -= 1
	notaSprite.texture = notas[current] 

func unlock_note(p: int):
	abrir()
	if p < unlockedNotes:
		unlockedNotes += 1
	current = p
	notaSprite.texture = notas[current] 
