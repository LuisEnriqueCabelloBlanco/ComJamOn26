extends Node2D

func _ready() -> void:
	visible = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		visible = true
		
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is Player:
		visible = false
	pass # Replace with function body.
