class_name WoodenBox
extends RigidBody2D

@export var is_metal:bool = 0

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	pass

func destroy():
	$Sprite2D.play()
	$Sprite2D.connect("animation_finished",queue_free)
