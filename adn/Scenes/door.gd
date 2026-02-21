extends Node2D


func _on_button_button_pressed() -> void:
	$StaticBody2D/CollisionShape2D.set_deferred("disabled",true)
	visible=false
	pass # Replace with function body.


func _on_button_button_released() -> void:
	$StaticBody2D/CollisionShape2D.set_deferred("disabled",false)
	visible=true
	pass # Replace with function body.
