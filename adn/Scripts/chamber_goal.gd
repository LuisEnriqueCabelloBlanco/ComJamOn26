extends Node2D
class_name ChamberGoal

@export var nextScene:PackedScene

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("odfobnd")
	if body is Player:
		get_tree().change_scene_to_packed(nextScene)
