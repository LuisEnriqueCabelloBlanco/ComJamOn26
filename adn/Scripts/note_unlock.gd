extends Node

## La nota a desbloquear
@export var note: int


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		GameManager.unlock_note.emit(note)
