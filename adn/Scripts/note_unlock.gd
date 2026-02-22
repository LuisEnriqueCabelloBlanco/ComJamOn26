extends Node

## La nota a desbloquear
@export var note: int
var picked = false

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		if !picked:
			GameManager.unlock_note.emit(note)
			picked = true
